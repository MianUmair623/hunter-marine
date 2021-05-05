!function(c){"use strict";c.support.pushState=window.history&&window.history.pushState&&window.history.replaceState&&!navigator.userAgent.match(/((iPod|iPhone|iPad).+\bOS\s+[1-4]|WebApps\/.+CFNetwork)/);var i={init:function(t,i){i.options=c.extend({scrollContainer:window,scrollPadding:100,scrollEventDelay:300},t),this.options=i.options,this.container=i.container,(i.scrollModule=this)._toplock=!0,this._bottomlock=!0,this.scrollContainer=c(this.options.scrollContainer),this.updateEntities(),this.sortMarkers(),this.currentPage=null,this.container.on("jes:afterPageLoad",c.proxy(function(t,i,o){if(this.updateEntities(),this.sortMarkers(),this.checkMarker(),"top"==o){var n=this.markers[1].top,e=this.scrollContainer.scrollTop();this.scrollContainer.scrollTop(e+n)}},this)),this.bind()},updateEntities:function(){this.entities=c(this.options.entity,this.container)},sortMarkers:function(){var t=[];c(".jes-marker",this.container).each(function(){t.push({top:c(this).position().top,url:c(this).data("jesUrl")})}),this.markers=t},checkMarker:function(){for(var t=this.markers[0],i=this.scrollContainer.scrollTop(),o=1;o<this.markers.length&&i>this.markers[o].top;o++)t=this.markers[o];t.url!=this.currentPage&&(this.currentPage=t.url,c(this.container).trigger("jes:scrollToPage",t.url))},bind:function(){this.scrollContainer.on("scroll.jes",c.proxy(function(t){this._tId||(this.scrollHandler(t),this._tId=setTimeout(c.proxy(function(){this._tId=null},this),this.options.scrollEventDelay))},this))},unbind:function(){c(this.options.scrollContainer).off("scroll.jes")},scrollHandler:function(){var t=this.scrollContainer,i=this.entities,o=i.first(),n=i.last(),e=t.scrollTop(),s=e+t.height(),r=o.position().top+this.options.scrollPadding,a=n.outerHeight()+n.position().top-this.options.scrollPadding;e<r?this._toplock||(c(this.container).trigger("jes:topThreshold"),this._toplock=!0):this._toplock=!1,a<s?this._bottomlock||(c(this.container).trigger("jes:bottomThreshold"),this._bottomlock=!0):this._bottomlock=!1,this.checkMarker()}},o={init:function(t,i){i.options=c.extend({},t),this.options=i.options,this.container=i.container,this.setMarker(c(this.options.entity,this.container).first(),location.href),i.ajaxModule=this},loadPage:function(r,a,h){var l={top:{find:"first",inject:"insertBefore"},bottom:{find:"last",inject:"insertAfter"}}[a];this.container.trigger("jes:beforePageLoad",[r,a]),c.get(r,null,c.proxy(function(t){var i=c("<div>").html(t),o=this.options.container,n=c(o,i).first();if(n.length){var e=n.find(this.options.entity);"bottom"==a&&e.each(function(){var t=c(this).attr("id");t&&c("#"+t,this.container).remove()});var s=c(this.options.entity,o)[l.find]();e[l.inject](s),this.setMarker(e.first(),r)}c.isFunction(h)&&h(i),this.container.trigger("jes:afterPageLoad",[r,a,i,e])},this),"html")},setMarker:function(t,i){t.addClass("jes-marker").data("jesUrl",i)}},n={init:function(t,s){s.options=c.extend({nextPage:".pagination a[rel=next]",previousPage:".pagination a[rel=previous]"},t),this.options=s.options,this.container=s.container,c.each([{selector:this.options.nextPage,event:"jes:bottomThreshold.navigation",placement:"bottom"},{selector:this.options.previousPage,event:"jes:topThreshold.navigation",placement:"top"}],c.proxy(function(t,o){if(o.element=c(o.selector),o.element.length){var n=o.element.prop("href"),e=!1,i=function(){!e&&n&&(e=!0,s.ajaxModule.loadPage(n,o.placement,c.proxy(function(t){var i=c(o.selector,c(t));i.length?(e=!1,n=i.prop("href"),o.element.attr("href",n)):(c(this).off(o.event),o.element.remove())},this)))};c(this.container).on(o.event,i),c(o.element).on("click",c.proxy(function(t){t.preventDefault(),i.apply(this.container)},this))}},this))}},e={init:function(t,i){c.support.pushState&&i.container.on("jes:scrollToPage",function(t,i){history.replaceState({},null,i)})}};c.endlessScroll=function(t){if(this.options=c.extend(!0,{container:"#container",entity:".entity",_modules:[o,i,n,e],modules:[]},t),this.container=c(this.options.container),!this.container.length)throw"Container for endless scroll isn't available on the page";return c.merge(this.options.modules,this.options._modules),this.options.modules.forEach(c.proxy(function(t){t.init(this.options,this)},this)),this}}(jQuery);