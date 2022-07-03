module("luci.controller.speedtest", package.seeall)
function index()
    
entry({"admin","services","speedtest"}, template("speedtest"), _("Speedtest")).leaf=true
end
