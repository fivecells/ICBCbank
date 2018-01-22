function messageHandler(event) {
    var msg = JSON.parse(event.data), a = functionList[msg.functionName];
    "function" == typeof a && a.call(this, msg.functionParam)
}

function perbankFreshFrameHeight(h, crrent) {
    var pcfMinHeight = $(window).height() - 390;
    "undefined" != crrent && "" != crrent ? ("perbank-content-frame" == crrent && h < pcfMinHeight && (h = pcfMinHeight), $("#" + crrent).height(h)) : (h < pcfMinHeight && (h = pcfMinHeight), $("#perbank-content-frame").height(h))
}

function perbankLogin(sid, transData) {
    document.location.href.replace(/\?.*$/, ""), document.location.href.replace(/.*\?(.*)/, "$1").replace(/(serviceId=[^&$]*|transData=[^&$]*|lService=[^&$]*)/g, "");
    window.location = "/moneybank/icbc/newperbank/main/login.jsp", showLogonDiv()
}

function callIframeMethod(funcName, callType) {
    var frameName = CrossMsg.contentFrameName;
    void 0 != callType && "1" == callType && (frameName = CrossMsg.popFrameName), CrossDomain.callIframe(frameName, {
        functionName: funcName,
        functionParam: [""]
    }, CrossMsg.iframeDomain)
}

function perbankOpenWindow(obj) {
    showAdDiv(obj)
}

function perbankCloseWindow() {
    hideLogonDiv()
}

function perbankAtomLocation(sid, transData, sessionIdpara) {
    var ssid = sessionIdpara || dse_sessionId;
    "" == sid && alert("ÇëÇóserviceidÎª¿Õ£¡ÇëÌí¼ÓÔ­×Ó·þÎñ¡£");
    var url = window.top.location.href;
    url.indexOf("?") > -1 && (url = url.substr(0, url.indexOf("?"))), url = url + "?serviceId=" + sid, transData && (url = url + "&transData=" + transData), ssid && (url = url + "&dse_sessionId=" + ssid), window.top.location.href = url
}

function windowOpen(url, flag) {
    if ("3" == flag) window.location.href = url; else if ("1" == flag) window.open(url); else if ("4" == flag) {
        var url_new = window.top.location.href;
        url_new.indexOf("/moneybank/icbc") > -1 && (url_new = url_new.substr(0, url_new.indexOf("/moneybank/icbc")) + url), window.open(url_new)
    }
}

function AtomSerivceSubmit(serviceId, transData, checkflag, loginws) {
    perbankAtomLocationTW(serviceId, transData, "", loginws)
}

function perbankAtomLocationTW(sid, transData1, sessionIdpara, loginws, oratype) {
    try {
        frames["perbank-content-frame"].AtomSerivceShowLoading()
    } catch (e) {
    }
    jQuery("#menulist").hide();
    try {
        UserBrowseSidStack.clearUserBrowseSidStack(), UserBrowseSidStack.setBrowseSid(sid, transData1)
    } catch (e) {
    }
    var serviceIdInto = sid;
    sid.indexOf(">") > 0 && (serviceIdInto = sid, sid = serviceIdInto.substring(0, sid.indexOf(">")));
    try {
        if ("1" == loctionmapList.getLoctionmapListourl(sid).addurl_type) {
            if ("1" == loctionmapList.getLoctionmapListourl(sid).menu_type) {
                var url = loctionmapList.getLoctionmapListourl(sid).addurl;
                if (url = url + "?dse_sessionId=" + Perbank3PubData.dse_sessionId, null != transData1 && "" != transData1) {
                    var transData1Array = transData1.split("|");
                    url = url + "&" + loctionmapList.getLoctionmapListourl(sid).field1 + "=" + encodeURIComponent(transData1Array[0]), transData1Array.length > 1 && (url += "&" + loctionmapList.getLoctionmapListourl(sid).field2 + "=" + encodeURIComponent(transData1Array[1]))
                }
                window.open(url)
            } else if (null == dse_sessionId || "" == dse_sessionId) {
                var url = loctionmapList.getLoctionmapListourl(sid).url_nosession;
                if (null != transData1 && "" != transData1) {
                    var transData1Array = transData1.split("|");
                    url = url + "?" + loctionmapList.getLoctionmapListourl(sid).field1 + "=" + encodeURIComponent(transData1Array[0]), transData1Array.length > 1 && (url += "&" + loctionmapList.getLoctionmapListourl(sid).field2 + "=" + transData1Array[1])
                }
                window.open(url)
            } else {
                var url = loctionmapList.getLoctionmapListourl(sid).url;
                if (url = url + "?dse_sessionId=" + dse_sessionId, null != transData1 && "" != transData1) {
                    var transData1Array = transData1.split("|");
                    url = url + "&" + loctionmapList.getLoctionmapListourl(sid).field1 + "=" + encodeURIComponent(transData1Array[0]), transData1Array.length > 1 && (url += "&" + loctionmapList.getLoctionmapListourl(sid).field2 + "=" + transData1Array[1])
                }
                window.open(url)
            }
            try {
                frames["perbank-content-frame"].AtomSerivceHideLoading()
            } catch (e) {
            }
            return
        }
    } catch (e) {
    }
    var ssid = sessionIdpara || dse_sessionId;
    if (loginws) return void AtomSerivceSubmitPre(serviceIdInto, transData1, "", "1", loginws);
    if (AtomSerivceSubmitPre(serviceIdInto, transData1, ssid, "1")) {
        var serviceIdFirst = serviceId;
        if (serviceId.indexOf(">") > 0 && (serviceIdFirst = serviceId.substring(0, serviceId.indexOf(">"))), loctionmapList.isMyBank(sid) && !loctionmapList.isMyBank(serviceIdFirst) || !loctionmapList.isMyBank(sid) && loctionmapList.isMyBank(serviceIdFirst)) return void perbankAtomLocationBW(serviceIdInto, transData1, ssid, "", oratype);
        try {
            "PBL100107" == sid ? (serviceId = "PBL200202", transData = "") : (serviceId = sid, transData = transData1)
        } catch (e) {
        }
        serviceIdInto.indexOf(">") > 0 ? document.topfameFrom.serviceIdInto.value = serviceIdInto : document.topfameFrom.serviceIdInto.value = "", setDisAd(sid, dse_sessionId), "" != zoneNo && null != zoneNo && (document.topfameFrom.zoneNo.value = zoneNo), document.topfameFrom.action = "/moneybank/servlet/ICBCPERBANKLocationServiceServlet", document.topfameFrom.target = "perbank-content-frame", document.topfameFrom.transData.value = transData1, document.topfameFrom.serviceId.value = sid, document.topfameFrom.dse_sessionId.value = ssid, document.topfameFrom.submit()
    }
}

function perbankAtomLocationFW(sid, transData, dse_sessionId) {
    perbankAtomLocationFWshow(), "" != zoneNo && null != zoneNo && (document.topfameFrom1.zoneNo.value = zoneNo), document.topfameFrom1.transData.value = transData, document.topfameFrom1.serviceId.value = sid, document.topfameFrom1.dse_sessionId.value = dse_sessionId, document.topfameFrom1.submit()
}

function draw_perbankAtomLocationFW(sid, transData, dse_sessionId, height, width) {
    "" != zoneNo && null != zoneNo && (document.draw_topfameFrom1.zoneNo.value = zoneNo), document.draw_topfameFrom1.transData.value = transData, document.draw_topfameFrom1.serviceId.value = sid, document.draw_topfameFrom1.dse_sessionId.value = dse_sessionId, draw_perbankAtomLocationFWshow(height, width), setTimeout("draw_goggogo()", 1e3)
}

function draw_goggogo() {
    document.draw_topfameFrom1.submit()
}

function goggogo() {
    document.topfameFrom1.submit()
}

function perbankAtomLocationBW(sid, transData, dse_sessionId, zoneNo, oratype) {
    try {
        isAutoLoad = !0
    } catch (e) {
    }
    try {
        UserBrowseSidStack.clearUserBrowseSidStack(), UserBrowseSidStack.setBrowseSid(sid, transData)
    } catch (e) {
    }
    var url = window.top.location.href, mn = "guide_logon", co = document.cookie, b = co.indexOf(mn);
    if (b < 0 && "PBL201700" == sid && "1" == oratype)
        return url = "/moneybank/.frame_guide.jsp?dse_sessionId=" + dse_sessionId, void(window.location.href = url);
    url.indexOf("?") > -1 && (url = url.substr(0, url.indexOf("?")));
    var serviceIdInto = "";
    sid.indexOf(">") > 0 && (serviceIdInto = sid, sid = serviceIdInto.substring(0, sid.indexOf(">"))), url = "/moneybank/.frame_index.jsp", serviceIdInto.indexOf(">") > 0 ? document.topfameFrom.serviceIdInto.value = serviceIdInto : document.topfameFrom.serviceIdInto.value = "", document.topfameFrom.action = url, "" != zoneNo && null != zoneNo && (document.topfameFrom.zoneNo.value = zoneNo), document.topfameFrom.target = "", document.topfameFrom.transData.value = transData, document.topfameFrom.serviceId.value = sid, document.topfameFrom.dse_sessionId.value = dse_sessionId, document.topfameFrom.submit()
}

function setDisAd(sid, dse_sessionId) {
    if ("PBL200202" == sid) {
        jQuery("#index_dd").show(), jQuery("#atomService_content").hide();
        try {
            window.scroll(0, 0)
        } catch (e) {
        }
        try {
            changeTzlcRight(), pdzuiquan()
        } catch (e) {
        }
    } else {
        jQuery(".choose-1").hide(), jQuery(".choose-pop").hide(), jQuery(".choose-box .zuiai").removeClass("active"), jQuery(".choose-box .quanbu").removeClass("active"), jQuery("#index_dd").hide(), jQuery("#atomService_content").show();
        var pcfMinHeight = $(window).height() - 390;
        if ($("#perbank-content-frame").height() < pcfMinHeight && $("#perbank-content-frame").height(pcfMinHeight), "PBL201700" != sid) jQuery("#guessyoulike_div_outer").hide(), jQuery("#atomService_content").css("margin-bottom", "60px"); else {
            jQuery("#guessyoulike_div_outer").show(), jQuery("#atomService_content").css("margin-bottom", "0px");
            try {
                changeTzlcRight()
            } catch (e) {
            }
        }
    }
}

function perbankFreshFWFrameHeight(h) {
    h > 500 ? ($("#ICBC_window_flot_frame").height(500), $("#ICBC_window_flot_frame") && (document.getElementById("ICBC_window_flot_frame").style.overflow = "scroll", document.getElementById("ICBC_window_flot_frame").scrolling = "yes")) : $("#ICBC_window_flot_frame").height(h)
}

function backToFeeHome() {
    window.location.href = realContextPath + "/fee/feeHome." + webType
}

function feeFreshFrameHeight(h) {
    $("#fee-content-frame").height(h)
}

function perbankRelocateByIdorUrl(serviceId, url) {
    if ("undefined" != typeof url && "" != url) try {
        window.top.document.location.href = url
    } catch (e) {
    } else {
        var targetLocation = "";
        if ("undefined" != typeof serviceId && "" != serviceId) {
            var upcaseName = serviceId.toUpperCase();
            switch (upcaseName) {
                case"PBL200404":
                    targetLocation = mallHttpsPath + "/member/memberFinance.jhtml?menuType=6_1&column=1";
                    break;
                case"PBL200304":
                    targetLocation = mallHttpsPath + "/member/memberFinance.jhtml?menuType=6_1&column=2";
                    break;
                case"PBL200504":
                    targetLocation = mallHttpsPath + "/member/memberFinance.jhtml?menuType=6_1&column=3"
            }
        }
        if ("" != targetLocation) try {
            window.top.document.location.href = targetLocation
        } catch (e) {
        }
    }
}

function getPerbankParams() {
    return parentMessage.type = "param", parentMessage.content.perbankPath = mallHttpsPath + "/ebankfin/perbank.jhtml", this.postMessage(JSON.stringify(parentMessage), "*"), parentMessage
}

function logPV(serviceid, Prodid, ProdName, flag) {
    addPvValue(["pvModelElementId", "MainMenu"]), addPvValue(["serviceid", serviceid]), addPvValue(["uip", clientIP]), addPvValue(["areacode", zoneNo]), addPvValue(["requestChannel", "302"]), addPvValue(["cis", mainCIS]), "undefined" != typeof Prodid && "" != Prodid && addPvValue(["prodcode", Prodid]), "undefined" != typeof ProdName && "" != ProdName && addPvValue(["prodname", ProdName]), "undefined" != typeof flag && "" != flag && "1" == flag && addPvValue(["srcpageno", "20000000"]);
    try {
        ar_main()
    } catch (e) {
    }
    addPvValue(["pvModelElementId", ""]), addPvValue(["serviceid", ""]), addPvValue(["uip", ""]), addPvValue(["areacode", ""]), addPvValue(["requestChannel", ""]), addPvValue(["prodcode", ""]), addPvValue(["prodname", ""]), addPvValue(["cis", ""]), addPvValue(["srcpageno", ""])
}

function historyViewSet(thirdMenuID, firstMenuID, secondMenuName, thirdMenuName, dse_sessionId, url) {
    if (null == window.sessionStorage.getItem(dse_sessionId) || "" == window.sessionStorage.getItem(dse_sessionId) || "undefined" == window.sessionStorage.getItem(dse_sessionId)) window.sessionStorage.setItem(dse_sessionId, thirdMenuID + "|" + firstMenuID + "|" + secondMenuName + "|" + thirdMenuName + "|" + url); else {
        var tmp = window.sessionStorage.getItem(dse_sessionId);
        window.sessionStorage.setItem(dse_sessionId, thirdMenuID + "|" + firstMenuID + "|" + secondMenuName + "|" + thirdMenuName + "|" + url + "&" + tmp)
    }
}

var parentMessage = {type: "", content: {}}, functionList = {
    perbankLogin: perbankLogin,
    callIframeMethod: callIframeMethod,
    perbankOpenWindow: perbankOpenWindow,
    perbankCloseWindow: perbankCloseWindow,
    perbankAtomLocation: perbankAtomLocation,
    perbankFreshFrameHeight: perbankFreshFrameHeight,
    perbankRelocateByIdorUrl: perbankRelocateByIdorUrl,
    getPerbankParams: getPerbankParams,
    feeFreshFrameHeight: feeFreshFrameHeight,
    backToFeeHome: backToFeeHome
};
jQuery(document).ready(function () {
});