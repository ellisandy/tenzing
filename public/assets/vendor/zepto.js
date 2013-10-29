!function(t){String.prototype.trim===t&&(String.prototype.trim=function(){return this.replace(/^\s+|\s+$/g,"")}),Array.prototype.reduce===t&&(Array.prototype.reduce=function(e){if(void 0===this||null===this)throw new TypeError;var i,n=Object(this),o=n.length>>>0,r=0;if("function"!=typeof e)throw new TypeError;if(0==o&&1==arguments.length)throw new TypeError;if(arguments.length>=2)i=arguments[1];else for(;;){if(r in n){i=n[r++];break}if(++r>=o)throw new TypeError}for(;o>r;)r in n&&(i=e.call(t,i,n[r],r,n)),r++;return i})}();var Zepto=function(){function t(t){return null==t?String(t):V[U.call(t)]||"object"}function e(e){return"function"==t(e)}function i(t){return null!=t&&t==t.window}function n(t){return null!=t&&t.nodeType==t.DOCUMENT_NODE}function o(e){return"object"==t(e)}function r(t){return o(t)&&!i(t)&&t.__proto__==Object.prototype}function s(t){return t instanceof Array}function a(t){return"number"==typeof t.length}function l(t){return M.call(t,function(t){return null!=t})}function c(t){return t.length>0?T.fn.concat.apply([],t):t}function h(t){return t.replace(/::/g,"/").replace(/([A-Z]+)([A-Z][a-z])/g,"$1_$2").replace(/([a-z\d])([A-Z])/g,"$1_$2").replace(/_/g,"-").toLowerCase()}function u(t){return t in N?N[t]:N[t]=new RegExp("(^|\\s)"+t+"(\\s|$)")}function d(t,e){return"number"!=typeof e||O[h(t)]?e:e+"px"}function p(t){var e,i;return D[t]||(e=E.createElement(t),E.body.appendChild(e),i=j(e,"").getPropertyValue("display"),e.parentNode.removeChild(e),"none"==i&&(i="block"),D[t]=i),D[t]}function f(t){return"children"in t?P.call(t.children):T.map(t.childNodes,function(t){return 1==t.nodeType?t:void 0})}function g(t,e,i){for(C in e)i&&(r(e[C])||s(e[C]))?(r(e[C])&&!r(t[C])&&(t[C]={}),s(e[C])&&!s(t[C])&&(t[C]=[]),g(t[C],e[C],i)):e[C]!==k&&(t[C]=e[C])}function m(t,e){return e===k?T(t):T(t).filter(e)}function v(t,i,n,o){return e(i)?i.call(t,n,o):i}function y(t,e,i){null==i?t.removeAttribute(e):t.setAttribute(e,i)}function b(t,e){var i=t.className,n=i&&i.baseVal!==k;return e===k?n?i.baseVal:i:(n?i.baseVal=e:t.className=e,void 0)}function x(t){var e;try{return t?"true"==t||("false"==t?!1:"null"==t?null:isNaN(e=Number(t))?/^[\[\{]/.test(t)?T.parseJSON(t):t:e):t}catch(i){return t}}function w(t,e){e(t);for(var i in t.childNodes)w(t.childNodes[i],e)}var k,C,T,_,S,A,L=[],P=L.slice,M=L.filter,E=window.document,D={},N={},j=E.defaultView.getComputedStyle,O={"column-count":1,columns:1,"font-weight":1,"line-height":1,opacity:1,"z-index":1,zoom:1},H=/^\s*<(\w+|!)[^>]*>/,z=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,F=/^(?:body|html)$/i,I=["val","css","html","text","data","width","height","offset"],R=["after","prepend","before","append"],B=E.createElement("table"),W=E.createElement("tr"),$={tr:E.createElement("tbody"),tbody:B,thead:B,tfoot:B,td:W,th:W,"*":E.createElement("div")},X=/complete|loaded|interactive/,Y=/^\.([\w-]+)$/,G=/^#([\w-]*)$/,q=/^[\w-]+$/,V={},U=V.toString,Z={},K=E.createElement("div");return Z.matches=function(t,e){if(!t||1!==t.nodeType)return!1;var i=t.webkitMatchesSelector||t.mozMatchesSelector||t.oMatchesSelector||t.matchesSelector;if(i)return i.call(t,e);var n,o=t.parentNode,r=!o;return r&&(o=K).appendChild(t),n=~Z.qsa(o,e).indexOf(t),r&&K.removeChild(t),n},S=function(t){return t.replace(/-+(.)?/g,function(t,e){return e?e.toUpperCase():""})},A=function(t){return M.call(t,function(e,i){return t.indexOf(e)==i})},Z.fragment=function(t,e,i){t.replace&&(t=t.replace(z,"<$1></$2>")),e===k&&(e=H.test(t)&&RegExp.$1),e in $||(e="*");var n,o,s=$[e];return s.innerHTML=""+t,o=T.each(P.call(s.childNodes),function(){s.removeChild(this)}),r(i)&&(n=T(o),T.each(i,function(t,e){I.indexOf(t)>-1?n[t](e):n.attr(t,e)})),o},Z.Z=function(t,e){return t=t||[],t.__proto__=T.fn,t.selector=e||"",t},Z.isZ=function(t){return t instanceof Z.Z},Z.init=function(t,i){if(t){if(e(t))return T(E).ready(t);if(Z.isZ(t))return t;var n;if(s(t))n=l(t);else if(o(t))n=[r(t)?T.extend({},t):t],t=null;else if(H.test(t))n=Z.fragment(t.trim(),RegExp.$1,i),t=null;else{if(i!==k)return T(i).find(t);n=Z.qsa(E,t)}return Z.Z(n,t)}return Z.Z()},T=function(t,e){return Z.init(t,e)},T.extend=function(t){var e,i=P.call(arguments,1);return"boolean"==typeof t&&(e=t,t=i.shift()),i.forEach(function(i){g(t,i,e)}),t},Z.qsa=function(t,e){var i;return n(t)&&G.test(e)?(i=t.getElementById(RegExp.$1))?[i]:[]:1!==t.nodeType&&9!==t.nodeType?[]:P.call(Y.test(e)?t.getElementsByClassName(RegExp.$1):q.test(e)?t.getElementsByTagName(e):t.querySelectorAll(e))},T.contains=function(t,e){return t!==e&&t.contains(e)},T.type=t,T.isFunction=e,T.isWindow=i,T.isArray=s,T.isPlainObject=r,T.isEmptyObject=function(t){var e;for(e in t)return!1;return!0},T.inArray=function(t,e,i){return L.indexOf.call(e,t,i)},T.camelCase=S,T.trim=function(t){return t.trim()},T.uuid=0,T.support={},T.expr={},T.map=function(t,e){var i,n,o,r=[];if(a(t))for(n=0;n<t.length;n++)i=e(t[n],n),null!=i&&r.push(i);else for(o in t)i=e(t[o],o),null!=i&&r.push(i);return c(r)},T.each=function(t,e){var i,n;if(a(t)){for(i=0;i<t.length;i++)if(e.call(t[i],i,t[i])===!1)return t}else for(n in t)if(e.call(t[n],n,t[n])===!1)return t;return t},T.grep=function(t,e){return M.call(t,e)},window.JSON&&(T.parseJSON=JSON.parse),T.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(t,e){V["[object "+e+"]"]=e.toLowerCase()}),T.fn={forEach:L.forEach,reduce:L.reduce,push:L.push,sort:L.sort,indexOf:L.indexOf,concat:L.concat,map:function(t){return T(T.map(this,function(e,i){return t.call(e,i,e)}))},slice:function(){return T(P.apply(this,arguments))},ready:function(t){return X.test(E.readyState)?t(T):E.addEventListener("DOMContentLoaded",function(){t(T)},!1),this},get:function(t){return t===k?P.call(this):this[t>=0?t:t+this.length]},toArray:function(){return this.get()},size:function(){return this.length},remove:function(){return this.each(function(){null!=this.parentNode&&this.parentNode.removeChild(this)})},each:function(t){return L.every.call(this,function(e,i){return t.call(e,i,e)!==!1}),this},filter:function(t){return e(t)?this.not(this.not(t)):T(M.call(this,function(e){return Z.matches(e,t)}))},add:function(t,e){return T(A(this.concat(T(t,e))))},is:function(t){return this.length>0&&Z.matches(this[0],t)},not:function(t){var i=[];if(e(t)&&t.call!==k)this.each(function(e){t.call(this,e)||i.push(this)});else{var n="string"==typeof t?this.filter(t):a(t)&&e(t.item)?P.call(t):T(t);this.forEach(function(t){n.indexOf(t)<0&&i.push(t)})}return T(i)},has:function(t){return this.filter(function(){return o(t)?T.contains(this,t):T(this).find(t).size()})},eq:function(t){return-1===t?this.slice(t):this.slice(t,+t+1)},first:function(){var t=this[0];return t&&!o(t)?t:T(t)},last:function(){var t=this[this.length-1];return t&&!o(t)?t:T(t)},find:function(t){var e,i=this;return e="object"==typeof t?T(t).filter(function(){var t=this;return L.some.call(i,function(e){return T.contains(e,t)})}):1==this.length?T(Z.qsa(this[0],t)):this.map(function(){return Z.qsa(this,t)})},closest:function(t,e){var i=this[0],o=!1;for("object"==typeof t&&(o=T(t));i&&!(o?o.indexOf(i)>=0:Z.matches(i,t));)i=i!==e&&!n(i)&&i.parentNode;return T(i)},parents:function(t){for(var e=[],i=this;i.length>0;)i=T.map(i,function(t){return(t=t.parentNode)&&!n(t)&&e.indexOf(t)<0?(e.push(t),t):void 0});return m(e,t)},parent:function(t){return m(A(this.pluck("parentNode")),t)},children:function(t){return m(this.map(function(){return f(this)}),t)},contents:function(){return this.map(function(){return P.call(this.childNodes)})},siblings:function(t){return m(this.map(function(t,e){return M.call(f(e.parentNode),function(t){return t!==e})}),t)},empty:function(){return this.each(function(){this.innerHTML=""})},pluck:function(t){return T.map(this,function(e){return e[t]})},show:function(){return this.each(function(){"none"==this.style.display&&(this.style.display=null),"none"==j(this,"").getPropertyValue("display")&&(this.style.display=p(this.nodeName))})},replaceWith:function(t){return this.before(t).remove()},wrap:function(t){var i=e(t);if(this[0]&&!i)var n=T(t).get(0),o=n.parentNode||this.length>1;return this.each(function(e){T(this).wrapAll(i?t.call(this,e):o?n.cloneNode(!0):n)})},wrapAll:function(t){if(this[0]){T(this[0]).before(t=T(t));for(var e;(e=t.children()).length;)t=e.first();T(t).append(this)}return this},wrapInner:function(t){var i=e(t);return this.each(function(e){var n=T(this),o=n.contents(),r=i?t.call(this,e):t;o.length?o.wrapAll(r):n.append(r)})},unwrap:function(){return this.parent().each(function(){T(this).replaceWith(T(this).children())}),this},clone:function(){return this.map(function(){return this.cloneNode(!0)})},hide:function(){return this.css("display","none")},toggle:function(t){return this.each(function(){var e=T(this);(t===k?"none"==e.css("display"):t)?e.show():e.hide()})},prev:function(t){return T(this.pluck("previousElementSibling")).filter(t||"*")},next:function(t){return T(this.pluck("nextElementSibling")).filter(t||"*")},html:function(t){return t===k?this.length>0?this[0].innerHTML:null:this.each(function(e){var i=this.innerHTML;T(this).empty().append(v(this,t,e,i))})},text:function(t){return t===k?this.length>0?this[0].textContent:null:this.each(function(){this.textContent=t})},attr:function(t,e){var i;return"string"==typeof t&&e===k?0==this.length||1!==this[0].nodeType?k:"value"==t&&"INPUT"==this[0].nodeName?this.val():!(i=this[0].getAttribute(t))&&t in this[0]?this[0][t]:i:this.each(function(i){if(1===this.nodeType)if(o(t))for(C in t)y(this,C,t[C]);else y(this,t,v(this,e,i,this.getAttribute(t)))})},removeAttr:function(t){return this.each(function(){1===this.nodeType&&y(this,t)})},prop:function(t,e){return e===k?this[0]&&this[0][t]:this.each(function(i){this[t]=v(this,e,i,this[t])})},data:function(t,e){var i=this.attr("data-"+h(t),e);return null!==i?x(i):k},val:function(t){return t===k?this[0]&&(this[0].multiple?T(this[0]).find("option").filter(function(){return this.selected}).pluck("value"):this[0].value):this.each(function(e){this.value=v(this,t,e,this.value)})},offset:function(t){if(t)return this.each(function(e){var i=T(this),n=v(this,t,e,i.offset()),o=i.offsetParent().offset(),r={top:n.top-o.top,left:n.left-o.left};"static"==i.css("position")&&(r.position="relative"),i.css(r)});if(0==this.length)return null;var e=this[0].getBoundingClientRect();return{left:e.left+window.pageXOffset,top:e.top+window.pageYOffset,width:Math.round(e.width),height:Math.round(e.height)}},css:function(e,i){if(arguments.length<2&&"string"==typeof e)return this[0]&&(this[0].style[S(e)]||j(this[0],"").getPropertyValue(e));var n="";if("string"==t(e))i||0===i?n=h(e)+":"+d(e,i):this.each(function(){this.style.removeProperty(h(e))});else for(C in e)e[C]||0===e[C]?n+=h(C)+":"+d(C,e[C])+";":this.each(function(){this.style.removeProperty(h(C))});return this.each(function(){this.style.cssText+=";"+n})},index:function(t){return t?this.indexOf(T(t)[0]):this.parent().children().indexOf(this[0])},hasClass:function(t){return L.some.call(this,function(t){return this.test(b(t))},u(t))},addClass:function(t){return this.each(function(e){_=[];var i=b(this),n=v(this,t,e,i);n.split(/\s+/g).forEach(function(t){T(this).hasClass(t)||_.push(t)},this),_.length&&b(this,i+(i?" ":"")+_.join(" "))})},removeClass:function(t){return this.each(function(e){return t===k?b(this,""):(_=b(this),v(this,t,e,_).split(/\s+/g).forEach(function(t){_=_.replace(u(t)," ")}),b(this,_.trim()),void 0)})},toggleClass:function(t,e){return this.each(function(i){var n=T(this),o=v(this,t,i,b(this));o.split(/\s+/g).forEach(function(t){(e===k?!n.hasClass(t):e)?n.addClass(t):n.removeClass(t)})})},scrollTop:function(){return this.length?"scrollTop"in this[0]?this[0].scrollTop:this[0].scrollY:void 0},position:function(){if(this.length){var t=this[0],e=this.offsetParent(),i=this.offset(),n=F.test(e[0].nodeName)?{top:0,left:0}:e.offset();return i.top-=parseFloat(T(t).css("margin-top"))||0,i.left-=parseFloat(T(t).css("margin-left"))||0,n.top+=parseFloat(T(e[0]).css("border-top-width"))||0,n.left+=parseFloat(T(e[0]).css("border-left-width"))||0,{top:i.top-n.top,left:i.left-n.left}}},offsetParent:function(){return this.map(function(){for(var t=this.offsetParent||E.body;t&&!F.test(t.nodeName)&&"static"==T(t).css("position");)t=t.offsetParent;return t})}},T.fn.detach=T.fn.remove,["width","height"].forEach(function(t){T.fn[t]=function(e){var o,r=this[0],s=t.replace(/./,function(t){return t[0].toUpperCase()});return e===k?i(r)?r["inner"+s]:n(r)?r.documentElement["offset"+s]:(o=this.offset())&&o[t]:this.each(function(i){r=T(this),r.css(t,v(this,e,i,r[t]()))})}}),R.forEach(function(e,i){var n=i%2;T.fn[e]=function(){var e,o,r=T.map(arguments,function(i){return e=t(i),"object"==e||"array"==e||null==i?i:Z.fragment(i)}),s=this.length>1;return r.length<1?this:this.each(function(t,e){o=n?e:e.parentNode,e=0==i?e.nextSibling:1==i?e.firstChild:2==i?e:null,r.forEach(function(t){if(s)t=t.cloneNode(!0);else if(!o)return T(t).remove();w(o.insertBefore(t,e),function(t){null==t.nodeName||"SCRIPT"!==t.nodeName.toUpperCase()||t.type&&"text/javascript"!==t.type||t.src||window.eval.call(window,t.innerHTML)})})})},T.fn[n?e+"To":"insert"+(i?"Before":"After")]=function(t){return T(t)[e](this),this}}),Z.Z.prototype=T.fn,Z.uniq=A,Z.deserializeValue=x,T.zepto=Z,T}();window.Zepto=Zepto,"$"in window||(window.$=Zepto),function(t){function e(t){var e=this.os={},i=this.browser={},n=t.match(/WebKit\/([\d.]+)/),o=t.match(/(Android)\s+([\d.]+)/),r=t.match(/(iPad).*OS\s([\d_]+)/),s=!r&&t.match(/(iPhone\sOS)\s([\d_]+)/),a=t.match(/(webOS|hpwOS)[\s\/]([\d.]+)/),l=a&&t.match(/TouchPad/),c=t.match(/Kindle\/([\d.]+)/),h=t.match(/Silk\/([\d._]+)/),u=t.match(/(BlackBerry).*Version\/([\d.]+)/),d=t.match(/(BB10).*Version\/([\d.]+)/),p=t.match(/(RIM\sTablet\sOS)\s([\d.]+)/),f=t.match(/PlayBook/),g=t.match(/Chrome\/([\d.]+)/)||t.match(/CriOS\/([\d.]+)/),m=t.match(/Firefox\/([\d.]+)/);(i.webkit=!!n)&&(i.version=n[1]),o&&(e.android=!0,e.version=o[2]),s&&(e.ios=e.iphone=!0,e.version=s[2].replace(/_/g,".")),r&&(e.ios=e.ipad=!0,e.version=r[2].replace(/_/g,".")),a&&(e.webos=!0,e.version=a[2]),l&&(e.touchpad=!0),u&&(e.blackberry=!0,e.version=u[2]),d&&(e.bb10=!0,e.version=d[2]),p&&(e.rimtabletos=!0,e.version=p[2]),f&&(i.playbook=!0),c&&(e.kindle=!0,e.version=c[1]),h&&(i.silk=!0,i.version=h[1]),!h&&e.android&&t.match(/Kindle Fire/)&&(i.silk=!0),g&&(i.chrome=!0,i.version=g[1]),m&&(i.firefox=!0,i.version=m[1]),e.tablet=!!(r||f||o&&!t.match(/Mobile/)||m&&t.match(/Tablet/)),e.phone=!(e.tablet||!(o||s||a||u||d||g&&t.match(/Android/)||g&&t.match(/CriOS\/([\d.]+)/)||m&&t.match(/Mobile/)))}e.call(t,navigator.userAgent),t.__detect=e}(Zepto),function(t){function e(t){return t._zid||(t._zid=p++)}function i(t,i,r,s){if(i=n(i),i.ns)var a=o(i.ns);return(d[e(t)]||[]).filter(function(t){return!(!t||i.e&&t.e!=i.e||i.ns&&!a.test(t.ns)||r&&e(t.fn)!==e(r)||s&&t.sel!=s)})}function n(t){var e=(""+t).split(".");return{e:e[0],ns:e.slice(1).sort().join(" ")}}function o(t){return new RegExp("(?:^| )"+t.replace(" "," .* ?")+"(?: |$)")}function r(e,i,n){"string"!=t.type(e)?t.each(e,n):e.split(/\s/).forEach(function(t){n(t,i)})}function s(t,e){return t.del&&("focus"==t.e||"blur"==t.e)||!!e}function a(t){return g[t]||t}function l(i,o,l,c,h,u){var p=e(i),f=d[p]||(d[p]=[]);r(o,l,function(e,o){var r=n(e);r.fn=o,r.sel=c,r.e in g&&(o=function(e){var i=e.relatedTarget;return!i||i!==this&&!t.contains(this,i)?r.fn.apply(this,arguments):void 0}),r.del=h&&h(o,e);var l=r.del||o;r.proxy=function(t){var e=l.apply(i,[t].concat(t.data));return e===!1&&(t.preventDefault(),t.stopPropagation()),e},r.i=f.length,f.push(r),i.addEventListener(a(r.e),r.proxy,s(r,u))})}function c(t,n,o,l,c){var h=e(t);r(n||"",o,function(e,n){i(t,e,n,l).forEach(function(e){delete d[h][e.i],t.removeEventListener(a(e.e),e.proxy,s(e,c))})})}function h(e){var i,n={originalEvent:e};for(i in e)y.test(i)||void 0===e[i]||(n[i]=e[i]);return t.each(b,function(t,i){n[t]=function(){return this[i]=m,e[t].apply(e,arguments)},n[i]=v}),n}function u(t){if(!("defaultPrevented"in t)){t.defaultPrevented=!1;var e=t.preventDefault;t.preventDefault=function(){this.defaultPrevented=!0,e.call(this)}}}var d=(t.zepto.qsa,{}),p=1,f={},g={mouseenter:"mouseover",mouseleave:"mouseout"};f.click=f.mousedown=f.mouseup=f.mousemove="MouseEvents",t.event={add:l,remove:c},t.proxy=function(i,n){if(t.isFunction(i)){var o=function(){return i.apply(n,arguments)};return o._zid=e(i),o}if("string"==typeof n)return t.proxy(i[n],i);throw new TypeError("expected function")},t.fn.bind=function(t,e){return this.each(function(){l(this,t,e)})},t.fn.unbind=function(t,e){return this.each(function(){c(this,t,e)})},t.fn.one=function(t,e){return this.each(function(i,n){l(this,t,e,null,function(t,e){return function(){var i=t.apply(n,arguments);return c(n,e,t),i}})})};var m=function(){return!0},v=function(){return!1},y=/^([A-Z]|layer[XY]$)/,b={preventDefault:"isDefaultPrevented",stopImmediatePropagation:"isImmediatePropagationStopped",stopPropagation:"isPropagationStopped"};t.fn.delegate=function(e,i,n){return this.each(function(o,r){l(r,i,n,e,function(i){return function(n){var o,s=t(n.target).closest(e,r).get(0);return s?(o=t.extend(h(n),{currentTarget:s,liveFired:r}),i.apply(s,[o].concat([].slice.call(arguments,1)))):void 0}})})},t.fn.undelegate=function(t,e,i){return this.each(function(){c(this,e,i,t)})},t.fn.live=function(e,i){return t(document.body).delegate(this.selector,e,i),this},t.fn.die=function(e,i){return t(document.body).undelegate(this.selector,e,i),this},t.fn.on=function(e,i,n){return!i||t.isFunction(i)?this.bind(e,i||n):this.delegate(i,e,n)},t.fn.off=function(e,i,n){return!i||t.isFunction(i)?this.unbind(e,i||n):this.undelegate(i,e,n)},t.fn.trigger=function(e,i){return("string"==typeof e||t.isPlainObject(e))&&(e=t.Event(e)),u(e),e.data=i,this.each(function(){"dispatchEvent"in this&&this.dispatchEvent(e)})},t.fn.triggerHandler=function(e,n){var o,r;return this.each(function(s,a){o=h("string"==typeof e?t.Event(e):e),o.data=n,o.target=a,t.each(i(a,e.type||e),function(t,e){return r=e.proxy(o),o.isImmediatePropagationStopped()?!1:void 0})}),r},"focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select keydown keypress keyup error".split(" ").forEach(function(e){t.fn[e]=function(t){return t?this.bind(e,t):this.trigger(e)}}),["focus","blur"].forEach(function(e){t.fn[e]=function(t){return t?this.bind(e,t):this.each(function(){try{this[e]()}catch(t){}}),this}}),t.Event=function(t,e){"string"!=typeof t&&(e=t,t=e.type);var i=document.createEvent(f[t]||"Events"),n=!0;if(e)for(var o in e)"bubbles"==o?n=!!e[o]:i[o]=e[o];return i.initEvent(t,n,!0,null,null,null,null,null,null,null,null,null,null,null,null),i.isDefaultPrevented=function(){return this.defaultPrevented},i}}(Zepto),function(t){function e(e,i,n){var o=t.Event(i);return t(e).trigger(o,n),!o.defaultPrevented}function i(t,i,n,o){return t.global?e(i||y,n,o):void 0}function n(e){e.global&&0===t.active++&&i(e,null,"ajaxStart")}function o(e){e.global&&!--t.active&&i(e,null,"ajaxStop")}function r(t,e){var n=e.context;return e.beforeSend.call(n,t,e)===!1||i(e,n,"ajaxBeforeSend",[t,e])===!1?!1:(i(e,n,"ajaxSend",[t,e]),void 0)}function s(t,e,n){var o=n.context,r="success";n.success.call(o,t,r,e),i(n,o,"ajaxSuccess",[e,n,t]),l(r,e,n)}function a(t,e,n,o){var r=o.context;o.error.call(r,n,e,t),i(o,r,"ajaxError",[n,o,t]),l(e,n,o)}function l(t,e,n){var r=n.context;n.complete.call(r,e,t),i(n,r,"ajaxComplete",[e,n]),o(n)}function c(){}function h(t){return t&&(t=t.split(";",2)[0]),t&&(t==C?"html":t==k?"json":x.test(t)?"script":w.test(t)&&"xml")||"text"}function u(t,e){return(t+"&"+e).replace(/[&?]{1,2}/,"?")}function d(e){e.processData&&e.data&&"string"!=t.type(e.data)&&(e.data=t.param(e.data,e.traditional)),!e.data||e.type&&"GET"!=e.type.toUpperCase()||(e.url=u(e.url,e.data))}function p(e,i,n,o){var r=!t.isFunction(i);return{url:e,data:r?i:void 0,success:r?t.isFunction(n)?n:void 0:i,dataType:r?o||n:n}}function f(e,i,n,o){var r,s=t.isArray(i);t.each(i,function(i,a){r=t.type(a),o&&(i=n?o:o+"["+(s?"":i)+"]"),!o&&s?e.add(a.name,a.value):"array"==r||!n&&"object"==r?f(e,a,n,i):e.add(i,a)})}var g,m,v=0,y=window.document,b=/<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,x=/^(?:text|application)\/javascript/i,w=/^(?:text|application)\/xml/i,k="application/json",C="text/html",T=/^\s*$/;t.active=0,t.ajaxJSONP=function(e){if(!("type"in e))return t.ajax(e);var i,n="jsonp"+ ++v,o=y.createElement("script"),l=function(){clearTimeout(i),t(o).remove(),delete window[n]},h=function(t){l(),t&&"timeout"!=t||(window[n]=c),a(null,t||"abort",u,e)},u={abort:h};return r(u,e)===!1?(h("abort"),!1):(window[n]=function(t){l(),s(t,u,e)},o.onerror=function(){h("error")},o.src=e.url.replace(/=\?/,"="+n),t("head").append(o),e.timeout>0&&(i=setTimeout(function(){h("timeout")},e.timeout)),u)},t.ajaxSettings={type:"GET",beforeSend:c,success:c,error:c,complete:c,context:null,global:!0,xhr:function(){return new window.XMLHttpRequest},accepts:{script:"text/javascript, application/javascript",json:k,xml:"application/xml, text/xml",html:C,text:"text/plain"},crossDomain:!1,timeout:0,processData:!0,cache:!0},t.ajax=function(e){var i=t.extend({},e||{});for(g in t.ajaxSettings)void 0===i[g]&&(i[g]=t.ajaxSettings[g]);n(i),i.crossDomain||(i.crossDomain=/^([\w-]+:)?\/\/([^\/]+)/.test(i.url)&&RegExp.$2!=window.location.host),i.url||(i.url=window.location.toString()),d(i),i.cache===!1&&(i.url=u(i.url,"_="+Date.now()));var o=i.dataType,l=/=\?/.test(i.url);if("jsonp"==o||l)return l||(i.url=u(i.url,"callback=?")),t.ajaxJSONP(i);var p,f=i.accepts[o],v={},y=/^([\w-]+:)\/\//.test(i.url)?RegExp.$1:window.location.protocol,b=i.xhr();i.crossDomain||(v["X-Requested-With"]="XMLHttpRequest"),f&&(v.Accept=f,f.indexOf(",")>-1&&(f=f.split(",",2)[0]),b.overrideMimeType&&b.overrideMimeType(f)),(i.contentType||i.contentType!==!1&&i.data&&"GET"!=i.type.toUpperCase())&&(v["Content-Type"]=i.contentType||"application/x-www-form-urlencoded"),i.headers=t.extend(v,i.headers||{}),b.onreadystatechange=function(){if(4==b.readyState){b.onreadystatechange=c,clearTimeout(p);var e,n=!1;if(b.status>=200&&b.status<300||304==b.status||0==b.status&&"file:"==y){o=o||h(b.getResponseHeader("content-type")),e=b.responseText;try{"script"==o?(1,eval)(e):"xml"==o?e=b.responseXML:"json"==o&&(e=T.test(e)?null:t.parseJSON(e))}catch(r){n=r}n?a(n,"parsererror",b,i):s(e,b,i)}else a(null,b.status?"error":"abort",b,i)}};var x="async"in i?i.async:!0;b.open(i.type,i.url,x);for(m in i.headers)b.setRequestHeader(m,i.headers[m]);return r(b,i)===!1?(b.abort(),!1):(i.timeout>0&&(p=setTimeout(function(){b.onreadystatechange=c,b.abort(),a(null,"timeout",b,i)},i.timeout)),b.send(i.data?i.data:null),b)},t.get=function(){return t.ajax(p.apply(null,arguments))},t.post=function(){var e=p.apply(null,arguments);return e.type="POST",t.ajax(e)},t.getJSON=function(){var e=p.apply(null,arguments);return e.dataType="json",t.ajax(e)},t.fn.load=function(e,i,n){if(!this.length)return this;var o,r=this,s=e.split(/\s/),a=p(e,i,n),l=a.success;return s.length>1&&(a.url=s[0],o=s[1]),a.success=function(e){r.html(o?t("<div>").html(e.replace(b,"")).find(o):e),l&&l.apply(r,arguments)},t.ajax(a),this};var _=encodeURIComponent;t.param=function(t,e){var i=[];return i.add=function(t,e){this.push(_(t)+"="+_(e))},f(i,t,e),i.join("&").replace(/%20/g,"+")}}(Zepto),function(t){t.fn.serializeArray=function(){var e,i=[];return t(Array.prototype.slice.call(this.get(0).elements)).each(function(){e=t(this);var n=e.attr("type");"fieldset"!=this.nodeName.toLowerCase()&&!this.disabled&&"submit"!=n&&"reset"!=n&&"button"!=n&&("radio"!=n&&"checkbox"!=n||this.checked)&&i.push({name:e.attr("name"),value:e.val()})}),i},t.fn.serialize=function(){var t=[];return this.serializeArray().forEach(function(e){t.push(encodeURIComponent(e.name)+"="+encodeURIComponent(e.value))}),t.join("&")},t.fn.submit=function(e){if(e)this.bind("submit",e);else if(this.length){var i=t.Event("submit");this.eq(0).trigger(i),i.defaultPrevented||this.get(0).submit()}return this}}(Zepto),function(t,e){function i(t){return n(t.replace(/([a-z])([A-Z])/,"$1-$2"))}function n(t){return t.toLowerCase()}function o(t){return r?r+t:n(t)}var r,s,a,l,c,h,u,d,p="",f={Webkit:"webkit",Moz:"",O:"o",ms:"MS"},g=window.document,m=g.createElement("div"),v=/^((translate|rotate|scale)(X|Y|Z|3d)?|matrix(3d)?|perspective|skew(X|Y)?)$/i,y={};t.each(f,function(t,i){return m.style[t+"TransitionProperty"]!==e?(p="-"+n(t)+"-",r=i,!1):void 0}),s=p+"transform",y[a=p+"transition-property"]=y[l=p+"transition-duration"]=y[c=p+"transition-timing-function"]=y[h=p+"animation-name"]=y[u=p+"animation-duration"]=y[d=p+"animation-timing-function"]="",t.fx={off:r===e&&m.style.transitionProperty===e,speeds:{_default:400,fast:200,slow:600},cssPrefix:p,transitionEnd:o("TransitionEnd"),animationEnd:o("AnimationEnd")},t.fn.animate=function(e,i,n,o){return t.isPlainObject(i)&&(n=i.easing,o=i.complete,i=i.duration),i&&(i=("number"==typeof i?i:t.fx.speeds[i]||t.fx.speeds._default)/1e3),this.anim(e,i,n,o)},t.fn.anim=function(n,o,r,p){var f,g,m,b={},x="",w=this,k=t.fx.transitionEnd;if(o===e&&(o=.4),t.fx.off&&(o=0),"string"==typeof n)b[h]=n,b[u]=o+"s",b[d]=r||"linear",k=t.fx.animationEnd;else{g=[];for(f in n)v.test(f)?x+=f+"("+n[f]+") ":(b[f]=n[f],g.push(i(f)));x&&(b[s]=x,g.push(s)),o>0&&"object"==typeof n&&(b[a]=g.join(", "),b[l]=o+"s",b[c]=r||"linear")}return m=function(e){if("undefined"!=typeof e){if(e.target!==e.currentTarget)return;t(e.target).unbind(k,m)}t(this).css(y),p&&p.call(this)},o>0&&this.bind(k,m),this.size()&&this.get(0).clientLeft,this.css(b),0>=o&&setTimeout(function(){w.each(function(){m.call(this)})},0),this},m=null}(Zepto),function(t,e){function i(i,n,o,r,s){"function"!=typeof n||s||(s=n,n=e);var a={opacity:o};return r&&(a.scale=r,i.css(t.fx.cssPrefix+"transform-origin","0 0")),i.animate(a,n,null,s)}function n(e,n,o,r){return i(e,n,0,o,function(){s.call(t(this)),r&&r.call(this)})}var o=window.document,r=(o.documentElement,t.fn.show),s=t.fn.hide,a=t.fn.toggle;t.fn.show=function(t,n){return r.call(this),t===e?t=0:this.css("opacity",0),i(this,t,1,"1,1",n)},t.fn.hide=function(t,i){return t===e?s.call(this):n(this,t,"0,0",i)},t.fn.toggle=function(i,n){return i===e||"boolean"==typeof i?a.call(this,i):this.each(function(){var e=t(this);e["none"==e.css("display")?"show":"hide"](i,n)})},t.fn.fadeTo=function(t,e,n){return i(this,t,e,null,n)},t.fn.fadeIn=function(t,e){var i=this.css("opacity");return i>0?this.css("opacity",0):i=1,r.call(this).fadeTo(t,i,e)},t.fn.fadeOut=function(t,e){return n(this,t,null,e)},t.fn.fadeToggle=function(e,i){return this.each(function(){var n=t(this);n[0==n.css("opacity")||"none"==n.css("display")?"fadeIn":"fadeOut"](e,i)})}}(Zepto),function(t){var e,i=[];t.fn.remove=function(){return this.each(function(){this.parentNode&&("IMG"===this.tagName&&(i.push(this),this.src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs=",e&&clearTimeout(e),e=setTimeout(function(){i=[]},6e4)),this.parentNode.removeChild(this))})}}(Zepto),function(t){function e(e,n){var l=e[a],c=l&&o[l];if(void 0===n)return c||i(e);if(c){if(n in c)return c[n];var h=s(n);if(h in c)return c[h]}return r.call(t(e),n)}function i(e,i,r){var l=e[a]||(e[a]=++t.uuid),c=o[l]||(o[l]=n(e));return void 0!==i&&(c[s(i)]=r),c}function n(e){var i={};return t.each(e.attributes,function(e,n){0==n.name.indexOf("data-")&&(i[s(n.name.replace("data-",""))]=t.zepto.deserializeValue(n.value))}),i}var o={},r=t.fn.data,s=t.camelCase,a=t.expando="Zepto"+ +new Date;t.fn.data=function(n,o){return void 0===o?t.isPlainObject(n)?this.each(function(e,o){t.each(n,function(t,e){i(o,t,e)})}):0==this.length?void 0:e(this[0],n):this.each(function(){i(this,n,o)})},t.fn.removeData=function(e){return"string"==typeof e&&(e=e.split(/\s+/)),this.each(function(){var i=this[a],n=i&&o[i];n&&t.each(e,function(){delete n[s(this)]})})}}(Zepto),function(t){function e(e){return e=t(e),!(!e.width()&&!e.height())&&"none"!==e.css("display")}function i(t,e){t=t.replace(/=#\]/g,'="#"]');var i,n,o=a.exec(t);if(o&&o[2]in s&&(i=s[o[2]],n=o[3],t=o[1],n)){var r=Number(n);n=isNaN(r)?n.replace(/^["']|["']$/g,""):r}return e(t,i,n)}var n=t.zepto,o=n.qsa,r=n.matches,s=t.expr[":"]={visible:function(){return e(this)?this:void 0},hidden:function(){return e(this)?void 0:this},selected:function(){return this.selected?this:void 0},checked:function(){return this.checked?this:void 0},parent:function(){return this.parentNode},first:function(t){return 0===t?this:void 0},last:function(t,e){return t===e.length-1?this:void 0},eq:function(t,e,i){return t===i?this:void 0},contains:function(e,i,n){return t(this).text().indexOf(n)>-1?this:void 0},has:function(t,e,i){return n.qsa(this,i).length?this:void 0}},a=new RegExp("(.*):(\\w+)(?:\\(([^)]+)\\))?$\\s*"),l=/^\s*>/,c="Zepto"+ +new Date;n.qsa=function(e,r){return i(r,function(i,s,a){try{var h;!i&&s?i="*":l.test(i)&&(h=t(e).addClass(c),i="."+c+" "+i);var u=o(e,i)}catch(d){throw console.error("error performing selector: %o",r),d}finally{h&&h.removeClass(c)}return s?n.uniq(t.map(u,function(t,e){return s.call(t,e,u,a)})):u})},n.matches=function(t,e){return i(e,function(e,i,n){return!(e&&!r(t,e)||i&&i.call(t,null,n)!==t)})}}(Zepto),function(t){t.fn.end=function(){return this.prevObject||t()},t.fn.andSelf=function(){return this.add(this.prevObject||t())},"filter,add,not,eq,first,last,find,closest,parents,parent,children,siblings".split(",").forEach(function(e){var i=t.fn[e];t.fn[e]=function(){var t=i.apply(this,arguments);return t.prevObject=this,t}})}(Zepto),function(t){function e(t){return"tagName"in t?t:t.parentNode}function i(t,e,i,n){var o=Math.abs(t-e),r=Math.abs(i-n);return o>=r?t-e>0?"Left":"Right":i-n>0?"Up":"Down"}function n(){c=null,h.last&&(h.el.trigger("longTap"),h={})}function o(){c&&clearTimeout(c),c=null}function r(){s&&clearTimeout(s),a&&clearTimeout(a),l&&clearTimeout(l),c&&clearTimeout(c),s=a=l=c=null,h={}}var s,a,l,c,h={},u=750;t(document).ready(function(){var d,p;t(document.body).bind("touchstart",function(i){d=Date.now(),p=d-(h.last||d),h.el=t(e(i.touches[0].target)),s&&clearTimeout(s),h.x1=i.touches[0].pageX,h.y1=i.touches[0].pageY,p>0&&250>=p&&(h.isDoubleTap=!0),h.last=d,c=setTimeout(n,u)}).bind("touchmove",function(t){o(),h.x2=t.touches[0].pageX,h.y2=t.touches[0].pageY,Math.abs(h.x1-h.x2)>10&&t.preventDefault()}).bind("touchend",function(){o(),h.x2&&Math.abs(h.x1-h.x2)>30||h.y2&&Math.abs(h.y1-h.y2)>30?l=setTimeout(function(){h.el.trigger("swipe"),h.el.trigger("swipe"+i(h.x1,h.x2,h.y1,h.y2)),h={}},0):"last"in h&&(a=setTimeout(function(){var e=t.Event("tap");e.cancelTouch=r,h.el.trigger(e),h.isDoubleTap?(h.el.trigger("doubleTap"),h={}):s=setTimeout(function(){s=null,h.el.trigger("singleTap"),h={}},250)},0))}).bind("touchcancel",r),t(window).bind("scroll",r)}),["swipe","swipeLeft","swipeRight","swipeUp","swipeDown","doubleTap","tap","singleTap","longTap"].forEach(function(e){t.fn[e]=function(t){return this.bind(e,t)}})}(Zepto),this.Zepto&&function(t){var e,i;return e=function(t,e,i,n,o){var r,s;return t?(s=t[i](),r={width:["left","right"],height:["top","bottom"]},r[i].forEach(function(e){return s+=parseInt(t.css("padding-"+e),10),n&&(s+=parseInt(t.css("border-"+e+"-width"),10)),o?s+=parseInt(t.css("margin-"+e),10):void 0}),s):null},["width","height"].forEach(function(i){var n,o,r,s,a;return n=i.replace(/./,function(t){return t[0].toUpperCase()}),(o=t.fn)[s="inner"+n]||(o[s]=function(t){return e(this,n,i,!1,t)}),(r=t.fn)[a="outer"+n]||(r[a]=function(t){return e(this,n,i,!0,t)})}),(i=t.fn).detach||(i.detach=function(t){var e,i;return i=this,null!=t&&(i=i.filter(t)),e=i.clone(!0),i.remove(),e})}(Zepto);