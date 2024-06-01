local HTTPMethod = {
	GET    = "GET",
	POST   = "POST",
	PUT    = "PUT",
	DELETE = "DELETE",
}
--- @alias http_client.Client.callback fun(result:HTTPRequestResult):void


--- **Usage:**
--- ```lua
---	http_client.Client:new("https://example.com/api/v1/", { timeout = 3 })
---		:on_success(function(result)
---			-- do success stuff
---		end)
---		:on_error(function(result)
---			-- do error stuff
---		end)
---		:post({
---			field1 = 'value1',
---			field2 = 'value2',
---		})
--- ```
---
--- @class http_client.Client
local Client     = {
	--- @type string
	base_url         = nil,
	--- @type HTTPRequest
	base_options     = {},
	--- @type HTTPApiTable
	request_http_api = {},
	--- @type http_client.Client.callback
	on_success       = nil,
	--- @type http_client.Client.callback
	on_error         = nil,
}

--- @param base_url     string
--- @param base_options HTTPRequest
---
--- @return http_client.Client
function Client:new(base_url, base_options)
	local class = self
	self = {}

	self.base_url         = base_url
	self.base_options     = base_options
	self.request_http_api = minetest.request_http_api()

	return setmetatable(self, { __index = class })
end

--- @param callback http_client.Client.callback
--- @return http_client.Client
function Client:on_success(callback)
	self.on_success = callback

	return self
end

--- @param callback http_client.Client.callback
--- @return http_client.Client
function Client:on_error(callback)
	self.on_error = callback

	return self
end

--- @return http_client.Client.callback
function Client:getAsyncCallback()
	local on_success = self.on_success
	local on_error   = self.on_error

	--- @type http_client.Client.callback
	local callback = function(result)
		if result.succeeded and result.code == 200 then
			if on_success then on_success(result) end
		else
			if on_error then on_error(result) end
		end
	end

	return callback
end

--- @param request HTTPRequest
--- @param callback http_client.Client.callback
function Client:rawRequest(request, callback)
	self.request_http_api:fetch(request, callback)
end

--- @param method  string      one of HTTPMethod::<CONST>'ants
--- @param url     string      url postfix (appends to base_url)
--- @param options HTTPRequest additional request params
function Client:request(method, url, options)
	--- @type HTTPRequest
	local request = table.merge(
		self.base_options,
		table.overwrite(
			{ url = self.base_url .. url, method = method, },
			options
		)
	)

	self:rawRequest(request, self:getAsyncCallback())

	self.on_success = nil
	self.on_error = nil
end

--- @param url     string      url postfix (appends to base_url)
--- @param options HTTPRequest additional request params
function Client:get(url, options)
	self:request(HTTPMethod.GET, url, options)
end

--- @param url     string      url postfix (appends to base_url)
--- @param data    table       post data fields
--- @param options HTTPRequest additional request params
function Client:post(url, data, options)
	self:request(HTTPMethod.POST, url, table.merge({ data = data, }, options))
end

--- @param url     string      url postfix (appends to base_url)
--- @param data    table       post data fields
--- @param options HTTPRequest additional request params
function Client:put(url, data, options)
	self:request(HTTPMethod.PUT, url, table.merge({ data = data, }, options))
end

--- @param url     string      url postfix (appends to base_url)
--- @param data    table       post data fields
--- @param options HTTPRequest additional request params
function Client:delete(url, data, options)
	self:request(HTTPMethod.DELETE, url, table.merge({ data = data, }, options))
end


return Client
