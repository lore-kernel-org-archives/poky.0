Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2384E008C9; Wed,  5 Nov 2014 16:33:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB9E0E0080D
	for <poky@yoctoproject.org>; Wed,  5 Nov 2014 16:33:39 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id x12so2223639wgg.31
	for <poky@yoctoproject.org>; Wed, 05 Nov 2014 16:33:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=oqw8qWjAdVkxWualmTgrRFWKrHPAoDmLlJgLrKmrNHQ=;
	b=BrqTn3sSjw9A2gPTpxDIskfDvB5qnOfPols4FIaNmdBiuVaaTDMyJULmXK/+fd80T1
	nz/HqzV3X1Re/wy2X/Pq7OMS/gB9U41lZqBIIYouKkgWIozyBGf11srpBV21hkXl3zo0
	PTmvH7lJD4F3RY2HlXFER/yGtr2UU0FZ+EMQsVMFRV7Z1nAhhbmOhpDyqoX4kPRtMULN
	ybAcxDVIdxNdeo58DEUAaaIqHlwrICGacdPNXUrvWRmIg/KHGMoMYjeG3+MsvMPnI1Yh
	yb5DqXFJfJnKR6chMyjn0DjU8J7IdYdq1GSrWz+64X2WLjt3bVR8PvImcOpWSyhS66O+
	wtTw==
X-Gm-Message-State: ALoCoQl7VSAN4RsvPhGEqYN3hm98Pkhbz73PmJacy4sZ2aShW9XDYu+t2jvqj/vVXzH9YsiojTBh
X-Received: by 10.195.13.114 with SMTP id ex18mr694457wjd.111.1415234018712;
	Wed, 05 Nov 2014 16:33:38 -0800 (PST)
Received: from adamian-desk.corp.intel.com ([83.217.123.106])
	by mx.google.com with ESMTPSA id rx8sm5831147wjb.30.2014.11.05.16.33.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Nov 2014 16:33:37 -0800 (PST)
Received: by adamian-desk.corp.intel.com (Postfix, from userid 1000)
	id 7AFC9561E06; Wed,  5 Nov 2014 18:42:06 +0000 (GMT)
From: Alex DAMIAN <alexandru.damian@intel.com>
To: poky@yoctoproject.org
Date: Wed,  5 Nov 2014 18:42:05 +0000
Message-Id: <1415212925-10184-1-git-send-email-alexandru.damian@intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: [PATCH 1/1] bitbake: toastergui: Various fixes for projects, layers and targets page
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Nov 2014 00:33:52 -0000

From: Alexandru DAMIAN <alexandru.damian@intel.com>

This is a combined set of fixes for the project, layers and targets
pages in the project section of toaster.

The fixes correct behaviour and look in various parts of the page,
including submitting XHR commands and updating the DOM with the correct
info.

Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
---
 bitbake/lib/toaster/bldcontrol/models.py           |  33 +-
 .../lib/toaster/toastergui/static/css/default.css  |   4 +-
 .../lib/toaster/toastergui/static/js/projectapp.js |  24 +-
 bitbake/lib/toaster/toastergui/templates/base.html |   3 +-
 .../toastergui/templates/basetable_bottom.html     |  13 +-
 .../lib/toaster/toastergui/templates/layers.html   | 113 ++++---
 .../toaster/toastergui/templates/mrb_section.html  |  17 +-
 .../lib/toaster/toastergui/templates/project.html  |  48 +--
 .../lib/toaster/toastergui/templates/targets.html  | 337 +++++++++++++--------
 bitbake/lib/toaster/toastergui/views.py            | 157 +++++-----
 10 files changed, 453 insertions(+), 296 deletions(-)

diff --git a/bitbake/lib/toaster/bldcontrol/models.py b/bitbake/lib/toaster/bldcontrol/models.py
index 15270c3..23d9905 100644
--- a/bitbake/lib/toaster/bldcontrol/models.py
+++ b/bitbake/lib/toaster/bldcontrol/models.py
@@ -42,11 +42,34 @@ class BuildEnvironment(models.Model):
 
     def get_artifact_type(self, path):
         if self.betype == BuildEnvironment.TYPE_LOCAL:
-            import magic
-            m = magic.open(magic.MAGIC_MIME_TYPE)
-            m.load()
-            return m.file(path)
-        raise Exception("FIXME: not implemented")
+            try:
+                import magic
+
+                # fair warning: this is a mess; there are multiple competeing and incompatible
+                # magic modules floating around, so we try some of the most common combinations
+
+                try:    # we try ubuntu's python-magic 5.4
+                    m = magic.open(magic.MAGIC_MIME_TYPE)
+                    m.load()
+                    return m.file(path)
+                except AttributeError:
+                    pass
+
+                try:    # we try python-magic 0.4.6
+                    m = magic.Magic(magic.MAGIC_MIME)
+                    return m.from_file(path)
+                except AttributeError:
+                    pass
+
+                try:    # we try pip filemagic 1.6
+                    m = magic.Magic(flags=magic.MAGIC_MIME_TYPE)
+                    return m.id_filename(path)
+                except AttributeError:
+                    pass
+
+                return "binary/octet-stream"
+            except ImportError:
+                return "binary/octet-stream"
 
     def get_artifact(self, path):
         if self.betype == BuildEnvironment.TYPE_LOCAL:
diff --git a/bitbake/lib/toaster/toastergui/static/css/default.css b/bitbake/lib/toaster/toastergui/static/css/default.css
index 9e62c6c..fb20fc9 100644
--- a/bitbake/lib/toaster/toastergui/static/css/default.css
+++ b/bitbake/lib/toaster/toastergui/static/css/default.css
@@ -61,8 +61,8 @@ dd p { line-height: 20px; }
 
 /* Override default Twitter Boostrap styles for anchor tags inside tables */
 td a, td a > code { color: #333333; }
-td a > code { white-space: normal; }
-td a:hover { color: #000000; text-decoration: underline; }
+td code { white-space: normal; }
+td a:hover, td a > code:hover { color: #000000; text-decoration: underline; }
 
 /* Override default Twitter Bootstrap styles for tr.error */
 .table tbody tr.error > td { background-color: transparent; } /* override default Bootstrap behaviour */
diff --git a/bitbake/lib/toaster/toastergui/static/js/projectapp.js b/bitbake/lib/toaster/toastergui/static/js/projectapp.js
index e674d8f..b347451 100644
--- a/bitbake/lib/toaster/toastergui/static/js/projectapp.js
+++ b/bitbake/lib/toaster/toastergui/static/js/projectapp.js
@@ -92,6 +92,24 @@ projectApp.config(function($interpolateProvider) {
     $interpolateProvider.endSymbol("]}");
 });
 
+
+// add time interval to HH:mm filter
+projectApp.filter('timediff', function() {
+    return function(input) {
+        function pad(j) {
+            if (parseInt(j) < 10) {return "0" + j}
+            return j;
+        }
+        seconds = parseInt(input);
+        minutes = Math.floor(seconds / 60);
+        seconds = seconds - minutes * 60;
+        hours = Math.floor(seconds / 3600);
+        seconds = seconds - hours * 3600;
+        return pad(hours) + ":" + pad(minutes) + ":" + pad(seconds);
+    }
+});
+
+
 // main controller for the project page
 projectApp.controller('prjCtrl', function($scope, $modal, $http, $interval, $location, $cookies, $q, $sce) {
 
@@ -150,7 +168,7 @@ projectApp.controller('prjCtrl', function($scope, $modal, $http, $interval, $loc
 
                     // identify canceled builds here, so we can display them.
                     _diffArrays(oldbuilds, $scope.builds,
-                        function (e,f) { return e.status == f.status && e.id == f.id }, // compare
+                        function (e,f) { return e.id == f.id },                         // compare
                         undefined,                                                      // added
                         function (e) {                                                  // deleted
                             if (e.status == "deleted") return;
@@ -421,7 +439,7 @@ projectApp.controller('prjCtrl', function($scope, $modal, $http, $interval, $loc
         }).then( function () {
             $scope.toggle(elementid);
             if (data['projectVersion'] != undefined) {
-                alertText += "<b>" + $scope.release.name + "</b>";
+                alertText += "<b>" + $scope.project.release.name + "</b>";
             }
             $scope.displayAlert(alertZone, alertText, "alert-info");
         });
@@ -506,7 +524,7 @@ projectApp.controller('prjCtrl', function($scope, $modal, $http, $interval, $loc
     // init code
     //
     $scope.init = function() {
-        $scope.pollHandle = $interval(function () { $scope._makeXHRCall({method: "POST", url: $scope.urls.xhr_edit, data: undefined});}, 4000, 0);
+        $scope.pollHandle = $interval(function () { $scope._makeXHRCall({method: "GET", url: $scope.urls.xhr_edit, data: undefined});}, 4000, 0);
     }
 
     $scope.init();
diff --git a/bitbake/lib/toaster/toastergui/templates/base.html b/bitbake/lib/toaster/toastergui/templates/base.html
index d414bfb..f377081 100644
--- a/bitbake/lib/toaster/toastergui/templates/base.html
+++ b/bitbake/lib/toaster/toastergui/templates/base.html
@@ -1,6 +1,6 @@
 <!DOCTYPE html>
 {% load static %}
-<html>
+<html lang="en">
     <head>
         <title>{% if objectname %} {{objectname|title}} - {% endif %}Toaster</title>
 <link rel="stylesheet" href="{% static 'css/bootstrap.min.css' %}" type="text/css">
@@ -9,6 +9,7 @@
 <link rel="stylesheet" href="{% static 'css/prettify.css' %}" type='text/css'>
 <link rel="stylesheet" href="{% static 'css/default.css' %}" type='text/css'>
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
+<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
 <script src="{% static 'js/jquery-2.0.3.min.js' %}">
 </script>
 <script src="{% static 'js/jquery.cookie.js' %}">
diff --git a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
index 091e11a..d48ad92 100644
--- a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
+++ b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
@@ -58,9 +58,12 @@
     }
 
     // load cookie for number of entries to be displayed on page
-    pagesize = $.cookie('count');
-    if (!pagesize)
-        pagesize = 10;
+    if ({{request.GET.count}} != "") {
+      pagesize = {{request.GET.count}};
+    } else {
+      pagesize = $.cookie('_count');
+    }
+
     $('.pagesize option').prop('selected', false)
                          .filter('[value="' + pagesize + '"]')
                          .attr('selected', true);
@@ -81,9 +84,9 @@
     $('.progress, .lead span').tooltip({container:'table', placement:'top'});
 
     $(".pagesize").change(function () {
-        reload_params({"count":$(this).val()});
         // save cookie with pagesize
-        $.cookie("count", $(this).val(), { path : $(location).attr('pathname') });
+        $.cookie("_count", $(this).val(), { path : $(location).attr('pathname') });
+        reload_params({"count":$(this).val()});
     });
 });
 </script>
diff --git a/bitbake/lib/toaster/toastergui/templates/layers.html b/bitbake/lib/toaster/toastergui/templates/layers.html
index 51f4dd9..3dd2b1f 100644
--- a/bitbake/lib/toaster/toastergui/templates/layers.html
+++ b/bitbake/lib/toaster/toastergui/templates/layers.html
@@ -9,14 +9,14 @@
 {% block projectinfomain %}
                 <div class="page-header">
                     <h1>
-  {% if request.GET.search and objects.paginator.count > 0  %}
+  {% if request.GET.filter and objects.paginator.count >  0 or request.GET.search and objects.paginator.count >  0 %}
       {{objects.paginator.count}} layer{{objects.paginator.count|pluralize}} found
-  {%elif request.GET.search and objects.paginator.count == 0%}
-      No layer found
+  {% elif request.GET.filter and objects.paginator.count ==  0 or request.GET.search and objects.paginator.count == 0 %}
+      No layers found
   {%else%}
       All layers
   {%endif%}
-                        <i class="icon-question-sign get-help heading-help" title="This page lists all the layers compatible with " + {{project.release.name}} + " that Toaster knows about."></i>
+                        <i class="icon-question-sign get-help heading-help" title="This page lists all the layers compatible with {{project.release.name}} that Toaster knows about."></i>
                      </h1>
                 </div>
 
@@ -25,51 +25,51 @@
   </div>
 
 
-                <div id="layer-added" class="alert alert-info lead" style="display:none;"></div>
-
-
 {% include "basetable_top_layers.html" %}
-    {% for lv in objects %}
+    {% for o in objects %}
     <tr class="data">
-            <td class="layer"><a href="{% url 'layerdetails' lv.id %}">{{lv.layer.name}}</a></td>
-            <td class="description">{{lv.layer.summary}}</td>
-            <td class="source"><a href="{% url 'layerdetails' lv.pk %}">{{lv.layer_source.name}}</a></td>
-            <td class="git-repo"><a href="{% url 'layerdetails' lv.pk %}"><code>{{lv.layer.vcs_url}}</code></a>
-            {% if lv.get_vcs_link_url %}
-            <a target="_blank" href="{{ lv.get_vcs_link_url }}"><i class="icon-share get-info"></i></a>
+            <td class="layer"><a href="{% url 'layerdetails' o.id %}">{{o.layer.name}}</a></td>
+            <td class="description">{{o.layer.summary}}</td>
+            <td class="source"><a href="{% url 'layerdetails' o.pk %}">{{o.layer_source.name}}</a></td>
+            <td class="git-repo"><a href="{% url 'layerdetails' o.pk %}"><code>{{o.layer.vcs_url}}</code></a>
+            {% if o.get_vcs_link_url %}
+            <a target="_blank" href="{{ o.get_vcs_link_url }}"><i class="icon-share get-info"></i></a>
         {% endif %}
         </td>
-            <td class="git-subdir" style="display: table-cell;"><a href="{% url 'layerdetails' lv.pk %}"><code>{{lv.dirpath}}</code></a>
-                {% if lv.dirpath and lv.get_vcs_dirpath_link_url %}
-            <a target="_blank" href="{{ lv.get_vcs_dirpath_link_url }}"><i class="icon-share get-info"></i></a>
+            <td class="git-subdir" style="display: table-cell;"><a href="{% url 'layerdetails' o.pk %}"><code>{{o.dirpath}}</code></a>
+                {% if o.dirpath and o.get_vcs_dirpath_link_url %}
+            <a target="_blank" href="{{ o.get_vcs_dirpath_link_url }}"><i class="icon-share get-info"></i></a>
                 {% endif %}
         </td>
-            <td class="branch">{% if lv.branch %}{{lv.branch}}{% else %}{{lv.up_branch.name}}{% endif %}</td>
+            <td class="branch">{% if o.branch %}{{o.branch}}{% else %}{{o.up_branch.name}}{% endif %}</td>
             <td class="dependencies">
-        {% with lvds=lv.dependencies.all%}
-            {% if lvds.count %}
+        {% with ods=o.dependencies.all%}
+            {% if ods.count %}
                     <a class="btn"
-                        title="<a href='{% url "layerdetails" lv.pk %}'>{{lv.layer.name}}</a> dependencies"
+                        title="<a href='{% url "layerdetails" o.pk %}'>{{o.layer.name}}</a> dependencies"
                         data-content="<ul class='unstyled'>
-                          {% for i in lvds%}
+                          {% for i in ods%}
                             <li><a href='{% url "layerdetails" i.depends_on.pk %}'>{{i.depends_on.layer.name}}</a></li>
                           {% endfor %}
                         </ul>">
-                        {{lvds.count}}
+                        {{ods.count}}
                     </a>
             {% endif %}
         {% endwith %}
             </td>
-            <td class="add-del-layers" value="{{lv.pk}}">
-                <button id="layer-del-{{lv.pk}}" class="btn btn-danger btn-block remove-layer" style="display:none;" onclick="layerDel({{lv.pk}}, '{{lv.layer.name}}', '{%url 'layerdetails' lv.pk%}')">
+            {% if project %}
+            <td class="add-del-layers" value="{{o.pk}}">
+                <div id="layer-tooltip-{{o.pk}}" style="display: none; font-size: 11px; line-height: 1.3;" class="tooltip-inner">layer was modified</div>
+                <button id="layer-del-{{o.pk}}" class="btn btn-danger btn-block remove-layer layerbtn" style="display:none;" onclick="layerDel({{o.pk}}, '{{o.layer.name}}', '{%url 'layerdetails' o.pk%}')" >
                     <i class="icon-trash"></i>
                     Delete layer
                 </button>
-                <button id="layer-add-{{lv.pk}}" class="btn btn-block" style="display:none;" onclick="layerAdd({{lv.pk}}, '{{lv.layer.name}}', '{%url 'layerdetails' lv.pk%}')" >
+                <button id="layer-add-{{o.pk}}" class="btn btn-block layerbtn" style="display:none;" onclick="layerAdd({{o.pk}}, '{{o.layer.name}}', '{%url 'layerdetails' o.pk%}')" title="layer added">
                     <i class="icon-plus"></i>
                     Add layer
                 </button>
             </td>
+            {% endif %}
      </tr>
     {% endfor %}
 {% include "basetable_bottom.html" %}
@@ -95,8 +95,11 @@
         </form>
     </div>
 
+{% if project %}
 <script>
 
+var updatetext;
+
 function _makeXHREditCall(data, onsuccess, onfail) {
     $.ajax( {
         type: "POST",
@@ -120,6 +123,7 @@ function _makeXHREditCall(data, onsuccess, onfail) {
 
 
 function layerDel(layerId, layerName, layerURL) {
+    updatetext = "1 layer deleted";
     _makeXHREditCall({ 'layerDel': layerId }, function () {
         show_alert("<strong>1</strong> layer deleted from <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>: <a href=\""+layerURL+"\">" + layerName +"</a>");
     });
@@ -142,25 +146,35 @@ function show_dependencies_modal(layerId, layerName, layerURL, dependencies) {
     }
     $('#dependencies_list').html(deplistHtml);
 
+    var selected = [layerId];
+    var layer_link_list = "<a href='"+layerURL+"'>"+layerName+"</a>";
+
     $("#dependencies_modal_form").submit(function (e) {
         e.preventDefault();
-        var selected = [layerId];
         $("input[name='dependencies']:checked").map(function () { selected.push(parseInt($(this).val()))});
+        if (selected.length > 1) {
+            updatetext = "" + selected.length + " layers added";
+        } else {
+            updatetext = "1 layer added";
+        }
 
-        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function () {
-            var layer_link_list = "<a href='"+layerURL+"'>"+layerName+"</a>";
-            for (var i = 0; i < selected.length; i++) {
-                for (var j = 0; j < dependencies.length; i++) {
-                    if (dependencies[j].id == selected[i]) {
-                        layer_link_list+= ", <a href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
-                        break;
-                    }
+        for (var i = 0; i < selected.length; i++) {
+            for (var j = 0; j < dependencies.length; j++) {
+                if (dependencies[j].id == selected[i]) {
+                    layer_link_list+= ", <a href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
+                    break;
                 }
             }
+        }
+
+        $('#dependencies_modal').modal('hide');
 
-            $('#dependencies_modal').modal('hide');
+    {% if project %}
+        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function () {
             show_alert("<strong>"+selected.length+"</strong> layers added to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>:" + layer_link_list);
         });
+    {% endif %}
+
     });
     $('#dependencies_modal').modal('show');
 }
@@ -178,6 +192,7 @@ function layerAdd(layerId, layerName, layerURL) {
                         show_dependencies_modal(layerId, layerName, layerURL, _data.list);
                     }
                     else {
+                        updatetext = "1 layer added";
                         _makeXHREditCall({ 'layerAdd': layerId }, function () {
         show_alert("<strong>1</strong> layer added to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>: <a href=\""+layerURL+"\">" + layerName +"</a>");
                         });
@@ -188,15 +203,31 @@ function layerAdd(layerId, layerName, layerURL) {
 }
 
 function button_set(id, state) {
+    var tohide, toshow;
     if (state == "add")
     {
-        $("#layer-add-" + id).show();
-        $("#layer-del-" + id).hide();
+        tohide = "#layer-del-";
+        toshow = "#layer-add-";
     }
     else if (state == "del")
     {
-        $("#layer-add-" + id).hide();
-        $("#layer-del-" + id).show();
+        tohide = "#layer-add-";
+        toshow = "#layer-del-";
+    }
+
+
+    var previouslyvisible = $(tohide + id).is(":visible");
+    if (previouslyvisible) {
+        $(tohide + id).fadeOut( function() {
+            $("#layer-tooltip-" + id).text(updatetext);
+            $("#layer-tooltip-" + id).fadeIn().delay(2000).fadeOut(function(){
+                $(toshow + id).delay(300).fadeIn();
+            });
+        });
+    } else {
+        $(tohide + id).hide();
+        $("#layer-tooltip-" + id).hide();
+        $(toshow + id).show();
     }
 };
 
@@ -214,9 +245,11 @@ function updateButtons(projectLayers) {
 }
 
 $(document).ready(function (){
+    $('.layerbtn').tooltip({ trigger: 'manual' });
     updateButtons({{projectlayerset}});
 });
 
 </script>
+{%endif%}
 
 {% endblock %}
diff --git a/bitbake/lib/toaster/toastergui/templates/mrb_section.html b/bitbake/lib/toaster/toastergui/templates/mrb_section.html
index 5ba0b08..586c47b 100644
--- a/bitbake/lib/toaster/toastergui/templates/mrb_section.html
+++ b/bitbake/lib/toaster/toastergui/templates/mrb_section.html
@@ -44,7 +44,7 @@
                 Build time: <a href="{% url 'buildtime' build.pk %}">{{ build.timespent|sectohms }}</a>
               </span>
           {% if build.project %}
-              <a class="btn {%if build.outcome == build.SUCCEEDED%}btn-success{%elif build.outcome == build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right" onclick="scheduleBuild({{build.project.name|json}}, {{build.get_sorted_target_list|mapselect:'target'|json}})">Run again</a>
+              <a class="btn {%if build.outcome == build.SUCCEEDED%}btn-success{%elif build.outcome == build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right" onclick="scheduleBuild({% url 'xhr_projectbuild' build.project.id as bpi%}{{bpi|json}}, {{build.project.name|json}}, {{build.get_sorted_target_list|mapselect:'target'|json}})">Run again</a>
           {% endif %}
             </div>
     {%endif%}
@@ -64,10 +64,10 @@
 
 <script>
 
-function _makeXHRBuildCall(data, onsuccess, onfail) {
+function _makeXHRBuildCall(url, data, onsuccess, onfail) {
     $.ajax( {
         type: "POST",
-        url: "{% url 'xhr_projectbuild' project.id %}",
+        url: url,
         data: data,
         headers: { 'X-CSRFToken' : $.cookie('csrftoken')},
         success: function (_data) {
@@ -81,19 +81,18 @@ function _makeXHRBuildCall(data, onsuccess, onfail) {
             alert("Call failed");
             console.log(_data);
             if (onfail) onfail(data);
-        }
-    });
+        } });
 }
 
 
-function scheduleBuild(projectName, buildlist) {
+function scheduleBuild(url, projectName, buildlist) {
   console.log("scheduleBuild");
-//  _makeXHRBuildCall({targets: buildlist.join(" ")}, function (_data) {
+  _makeXHRBuildCall(url, {targets: buildlist.join(" ")}, function (_data) {
 
-  $('#latest-builds').prepend('<div class="alert alert-info" style="padding-top:0px">' + '<span class="label label-info" style="font-weight: normal; margin-bottom: 5px; margin-left:-15px; padding-top:5px;">'+projectName+'</span><div class="row-fluid">' +
+      $('#latest-builds').prepend('<div class="alert alert-info" style="padding-top:0px">' + '<span class="label label-info" style="font-weight: normal; margin-bottom: 5px; margin-left:-15px; padding-top:5px;">'+projectName+'</span><div class="row-fluid">' +
   '<div class="span4 lead">' + buildlist.join(" ") +
   '</div><div class="span4 lead pull-right">Build queued. Your build will start shortly.</div></div></div>');
-//  }
+  });
 }
 
 </script>
diff --git a/bitbake/lib/toaster/toastergui/templates/project.html b/bitbake/lib/toaster/toastergui/templates/project.html
index 9399b31..6a81283 100644
--- a/bitbake/lib/toaster/toastergui/templates/project.html
+++ b/bitbake/lib/toaster/toastergui/templates/project.html
@@ -76,6 +76,14 @@ vim: expandtab tabstop=2
       </div>
   </script>
 
+  <script type="text/ng-template" id="target_display">
+      <div ng-switch on="t.task.length">
+        <div ng-switch-when="0">{[t.target]}</div>
+        <div ng-switch-default>{[t.target]}:{[t.task]}</div>
+      </div>
+  </script>
+
+
   <!-- build form -->
   <div class="well">
     <form class="build-form" ng-submit="targetNamedBuild()">
@@ -99,11 +107,11 @@ vim: expandtab tabstop=2
 
   <h2 class="air" ng-if="builds.length">Latest builds</h2>
 
-  <div class="alert" ng-repeat="b in builds" ng-class="{'queued':'alert-info', 'deleted':'alert-info', 'in progress': 'alert-info', 'In Progress':'alert-info', 'Succeeded':'alert-success', 'failed':'alert-error', 'Failed':'alert-error'}[b.status]">
+  <div class="alert" ng-repeat="b in builds" ng-class="{'queued':'alert-info', 'deleted':'alert-info', 'in progress': 'alert-info', 'failed':'alert-error', 'completed':{'In Progress':'alert-info', 'Succeeded':'alert-success', 'Failed':'alert-error'}[b.build[0].status]}[b.status]"  >
     <div class="row-fluid">
         <switch ng-switch="b.status">
           <case ng-switch-when="failed">
-            <div class="lead span3"> <span ng-repeat="t in b.targets">{[t.target]} </span>   </div>
+            <div class="lead span3"> <span ng-repeat="t in b.targets" ng-include src="'target_display'"></span>   </div>
             <div class="row-fluid">
               <div class="air well" ng-repeat="e in b.errors">
                 {[e.type]}: <pre>{[e.msg]}</pre>
@@ -111,53 +119,51 @@ vim: expandtab tabstop=2
             </div>
           </case>
           <case ng-switch-when="queued">
-            <div class="lead span5"> <span ng-repeat="t in b.targets">{[t.target]} </span>   </div>
+            <div class="lead span5"> <span ng-repeat="t in b.targets" ng-include src="'target_display'"></span>   </div>
             <div class="span4 lead" >Build queued
               <i title="This build will start as soon as a build server is available" class="icon-question-sign get-help get-help-blue heading-help" data-toggle="tooltip"></i>
             </div>
             <button class="btn pull-right btn-info" ng-click="buildCancel(b.id)">Cancel</button>
           </case>
           <case ng-switch-when="created">
-            <div class="lead span3"> <span ng-repeat="t in b.targets">{[t.target]} </span>   </div>
+            <div class="lead span3"> <span ng-repeat="t in b.targets" ng-include src="'target_display'"></span>   </div>
             <div class="span6" >
               <span class="lead">Creating build</span>
             </div>
             <button class="btn pull-right btn-info" ng-click="buildCancel(b.id)">Cancel</button>
           </case>
           <case ng-switch-when="deleted">
-            <div class="lead span3"> <span ng-repeat="t in b.targets">{[t.target]} </span>   </div>
+            <div class="lead span3"> <span ng-repeat="t in b.targets" ng-include src="'target_display'"></span>   </div>
             <div class="span6" id="{[b.id]}-deleted" >
               <span class="lead">Build deleted</span>
             </div>
             <button class="btn pull-right btn-info" ng-click="builds.splice(builds.indexOf(b), 1)">Close</button>
           </case>
           <case ng-switch-when="in progress">
-            <div class="lead span3"> <span ng-repeat="t in b.targets">{[t.target]} </span>   </div>
-            <div class="span4" >
-            </div>
-            <div class="lead pull-right">Build starting shortly</div>
-          </case>
-          <case ng-switch-when="In Progress">
+            <div class="lead span3"> <span ng-repeat="t in b.targets" ng-include src="'target_display'"></span>   </div>
             <div class="span4" >
-                <div class="progress" style="margin-top:5px;" data-toggle="tooltip" tooltip="{[b.completeper]}% of tasks complete">
-                    <div style="width: {[b.completeper]}%;" class="bar"></div>
+                <div class="progress" style="margin-top:5px;" data-toggle="tooltip" tooltip="{[b.build[0].completeper]}% of tasks complete">
+                    <div style="width: {[b.build[0].completeper]}%;" class="bar"></div>
                 </div>
             </div>
-            <div class="lead pull-right">ETA: at {[b.eta]}</div>
+            <div class="lead pull-right">ETA: at {[b.build[0].eta|date:"shortDate"]}</div>
           </case>
-          <case ng-switch-default="">
-            <div class="lead span3"><a href="{[b.build_page_url]}"><span ng-repeat="t in b.targets">{[t.target]} </span>   </div></a>
+          <case ng-switch-when="completed">
+            <div class="lead span3"><a href="{[b.build[0].build_page_url]}"><span ng-repeat="t in b.targets" ng-include src="'target_display'"></span></a></div>
             <div class="span2 lead">
-             {[b.completed_on|date:'dd/MM/yy HH:mm']}
+             {[b.build[0].completed_on|date:'dd/MM/yy HH:mm']}
             </div>
-            <div class="span2"><span>{[b.errors.len]}</span></div>
-            <div class="span2"><span>{[b.warnings.len]}</span></div>
-            <div> <span class="lead">Build time: {[b.build_time|date:"HH:mm"]}</span>
-                <button class="btn pull-right" ng-class="{'Succeeded':  'btn-success', 'Failed': 'btn-danger'}[b.status]"
+            <div class="span2"><span><a href="{[b.build[0].build_page_url]}#errors" class="lead error" ng-if="b.build[0].errors">{[b.build[0].errors]}</a></span></div>
+            <div class="span2"><span><a href="{[b.build[0].build_page_url]}#warnings" class="lead warning" ng-if="b.build[0].warnings">{[b.build[0].warnings]}</a></span></div>
+            <div> <span class="lead">Build time: {[b.build[0].build_time|timediff]}</span>
+                <button class="btn pull-right" ng-class="{'Succeeded':  'btn-success', 'Failed': 'btn-danger'}[b.build[0].status]"
                     ng-click="targetExistingBuild(b.targets)">Run again</button>
 
             </div>
           </case>
+          <case ng-switch-default="">
+          <div>FIXME!</div>
+          </case>
         </switch>
       <div class="lead pull-right">
       </div>
diff --git a/bitbake/lib/toaster/toastergui/templates/targets.html b/bitbake/lib/toaster/toastergui/templates/targets.html
index 3afdf0a..042d0fc 100644
--- a/bitbake/lib/toaster/toastergui/templates/targets.html
+++ b/bitbake/lib/toaster/toastergui/templates/targets.html
@@ -9,55 +9,74 @@
 {% block projectinfomain %}
                 <div class="page-header">
                     <h1>
-                        All targets
-                        <i class="icon-question-sign get-help heading-help" title="This page lists all the targets compatible with Yocto Project 1.7 'Dxxxx' that Toaster knows about. They include community-created targets suitable for use on top of OpenEmbedded Core and any targets you have imported"></i>
+  {% if request.GET.filter and objects.paginator.count >  0 or request.GET.search and objects.paginator.count >  0 %}
+      {{objects.paginator.count}} target{{objects.paginator.count|pluralize}} found
+  {% elif request.GET.filter and objects.paginator.count ==  0 or request.GET.search and objects.paginator.count == 0 %}
+      No targets found
+  {%else%}
+      All targets
+  {%endif%}
+                        <i class="icon-question-sign get-help heading-help" title="This page lists all the targets compatible with " + {{project.release.name}} + " that Toaster knows about."></i>
                      </h1>
                 </div>
-                <!--div class="alert">
-                    <div class="input-append" style="margin-bottom:0px;">
-                        <input class="input-xxlarge" type="text" placeholder="Search targets" value="browser" />
-                        <a class="add-on btn">
-                            <i class="icon-remove"></i>
-                        </a>
-                        <button class="btn" type="button">Search</button>
-                        <a class="btn btn-link" href="#">Show all targets</a>
-                    </div>
-                </div-->
-                <div id="target-added" class="alert alert-info lead" style="display:none;"></div>
-                <div id="target-removed" class="alert alert-info lead" style="display:none;">
-                    <button type="button" class="close" data-dismiss="alert">&times;</button>
-                    <strong>1</strong> target deleted from <a href="project-with-targets.html">your project</a>: <a href="#">meta-aarch64</a>
-                </div>
 
+  <div id="zone1alerts">
+
+  </div>
+
+{% if objects.paginator.count == 0 %}
+  <div class="row-fluid">
+      <div class="alert">
+        <form class="no-results input-append" id="searchform">
+            <input id="search" name="search" class="input-xxlarge" type="text" value="{{request.GET.search}}"/>{% if request.GET.search %}<a href="javascript:$('#search').val('');searchform.submit()" class="add-on btn" tabindex="-1"><i class="icon-remove"></i></a>{% endif %}
+            <button class="btn" type="submit" value="Search">Search</button>
+            <button class="btn btn-link" onclick="javascript:$('#search').val('');searchform.submit()">Show all targets</button>
+        </form>
+      </div>
+  </div>
+
+{% else %}
 
 {% include "basetable_top.html" %}
     {% for o in objects %}
     <tr class="data">
-	<td class="target">
-		{{o.name}} ({{o.id}}, {{o.up_id}})
-		<a target="_blank" href="{{o.get_layersource_view_url}}"><i class="icon-share get-info"></i></a>
-	</td>
-	<td class="version">{{o.version}}</td>
-	<td class="description">{{o.description}}</td>
-	<td class="recipe-file">
-		<code>{{o.file_path}}</code>
-		<a href="{{o.get_vcs_link_url}}" target="_blank"><i class="icon-share get-info"></i></a>
-	</td>
-	<td class="target-section">{{o.section}}</td>
-	<td class="license">{{o.license}}</td>
-	<td class="layer"><a href="#">{{o.layer_version.layer.name}}</a></td>
-	<td class="source">{{o.layer_source.name}}</td>
-	<td class="branch">{{o.layer_version.commit}}</td>
-	<td class="build">
-		<a id="build-target" href="project-with-targets.html?target=3g-router-image" class="btn btn-block" style="display:none;">
-			Build target
-		</a>
-		<a id="add-layer" href="#" class="btn btn-block nopop" title="1 layer added">
-			<i class="icon-plus"></i>
-			Add layer
-			<i class="icon-question-sign get-help" title="To build this target, you must first add the meta-embeddedgeeks layer to your project"></i>
-		</a>
-	</td>
+        <td class="target">
+                {{o.name}}
+                <a target="_blank" href="{{o.get_layersource_view_url}}"><i class="icon-share get-info"></i></a>
+        </td>
+        <td class="version">{{o.version}}</td>
+        <td class="description">{% if o.description %}{{o.description}}{% else %}{{o.summary}}{%endif%}</td>
+        <td class="recipe-file">
+                <code>{{o.file_path}}</code>
+                <a href="{{o.get_vcs_link_url}}{{o.file_path}}" target="_blank"><i class="icon-share get-info"></i></a>
+        </td>
+        <td class="target-section">{{o.section}}</td>
+        <td class="license">{{o.license}}</td>
+        <td class="layer"><a href="{% url 'layerdetails' o.layer_version.id%}">{{o.layer_version.layer.name}}</a></td>
+        <td class="source">{{o.layer_source.name}}</td>
+        <td class="branch">
+        {% if o.layer_version.up_branch %}
+            {{o.layer_version.up_branch.name}}
+        {% else %}
+        <a class="btn"
+                data-content="<ul class='unstyled'>
+                  <li>{{o.layer_version.commit}}</li>
+                </ul>">
+                {{o.layer_version.commit|truncatechars:13}}
+            </a>
+            {% endif %}
+        </td>
+        <td class="add-layer" value="{{o.pk}}" layerversion_id="{{o.layer_version.pk}}">
+            <div id="layer-tooltip-{{o.pk}}" style="display: none; font-size: 11px; line-height: 1.3;" class="tooltip-inner">layer was modified</div>
+            <a href="{% url 'project' project.id %}#/targetbuild={{o.name}}" id="target-build-{{o.pk}}" class="btn btn-block remove-layer" style="display:none;" >
+                Build target
+            </a>
+            <a id="layer-add-{{o.pk}}" class="btn btn-block" style="display:none;" href="javascript:layerAdd({{o.layer_version.pk}}, '{{o.layer_version.layer.name}}', '{%url 'layerdetails' o.layer_version.pk%}')" >
+                <i class="icon-plus"></i>
+                Add layer
+                <i title="" class="icon-question-sign get-help" data-original-title="To build this target, you must first add the {{o.layer_version.layer.name}} layer to your project"></i>
+            </a>
+        </td>
     </tr>
     {% endfor %}
 {% include "basetable_bottom.html" %}
@@ -65,122 +84,174 @@
     <!-- Modals -->
 
     <!-- 'Layer dependencies modal' -->
-    <div id="dependencies-message" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">
+    <div id="dependencies_modal" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">
+        <form id="dependencies_modal_form">
         <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
-            <h3>meta-acer dependencies</h3>
+            <h3><span class="layer-name"></span> dependencies</h3>
         </div>
         <div class="modal-body">
-            <p><strong>meta-acer</strong> depends on some targets that are not added to your project. Select the ones you want to add:</p>
-            <ul class="unstyled">
-                <li>
-                    <label class="checkbox">
-                        <input type="checkbox" checked="checked">
-                        meta-android
-                    </label>
-                </li>
-                <li>
-                    <label class="checkbox">
-                        <input type="checkbox" checked="checked">
-                        meta-oe
-                    </label>
-                </li>
+            <p><strong class="layer-name"></strong> depends on some layers that are not added to your project. Select the ones you want to add:</p>
+            <ul class="unstyled" id="dependencies_list">
             </ul>
         </div>
         <div class="modal-footer">
-            <button id="add-target-dependencies" type="submit" class="btn btn-primary" data-dismiss="modal" >Add targets</button>
-            <button class="btn" data-dismiss="modal">Cancel</button>
+            <button class="btn btn-primary" type="submit">Add layers</button>
+            <button class="btn" type="reset" data-dismiss="modal">Cancel</button>
         </div>
+        </form>
     </div>
 
-    <script src="assets/js/jquery-1.9.1.min.js" type='text/javascript'></script>
-    <script src="assets/js/jquery.tablesorter.min.js" type='text/javascript'></script>
-    <script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
-    <script src="assets/js/bootstrap.min.js" type='text/javascript'></script>
-    <script src="assets/js/prettify.js" type='text/javascript'></script>
-    <script src="assets/js/jit.js" type='text/javascript'></script>
-    <script src="assets/js/main.js" type='text/javascript'></script>
-
-    <script>
-     $(document).ready(function() {
-
-        //show or hide selected columns on load
-        $("input:checkbox").each(function(){
-            var selectedType = $(this).val();
-            if($(this).is(":checked")){
-                $("."+selectedType).show();
+{% endif %}
+
+{% if project %}
+<script>
+
+var updatetext;
+
+function _makeXHREditCall(data, onsuccess, onfail) {
+    $.ajax( {
+        type: "POST",
+        url: "{% url 'xhr_projectedit' project.id %}",
+        data: data,
+        headers: { 'X-CSRFToken' : $.cookie('csrftoken')},
+        success: function (_data) {
+            if (_data.error != "ok") {
+                alert(_data.error);
+            } else {
+                updateButtons(_data.layers.map(function (e) {return e.id}));
+                if (onsuccess != undefined) onsuccess(_data);
             }
-            else{
-                $("."+selectedType).hide();
+        },
+        error: function (_data) {
+            alert("Call failed");
+            console.log(_data);
+        }
+    });
+}
+
+function show_alert(text, cls) {
+    $("#zone1alerts").html("<div class=\"alert alert-info lead\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>" + text + "</div>");
+}
+
+
+function show_dependencies_modal(layerId, layerName, layerURL, dependencies) {
+    // update layer name
+    $('.layer-name').text(layerName);
+    var deplistHtml = "";
+    for (var i = 0; i < dependencies.length; i++) {
+        deplistHtml += "<li><label class=\"checkbox\"><input name=\"dependencies\" value=\""
+        deplistHtml += dependencies[i].id;
+        deplistHtml +="\" type=\"checkbox\" checked=\"checked\"/>";
+        deplistHtml += dependencies[i].name;
+        deplistHtml += "</label></li>";
+    }
+    $('#dependencies_list').html(deplistHtml);
+
+    var selected = [layerId];
+    var layer_link_list = undefined;
+
+    $("#dependencies_modal_form").submit(function (e) {
+        e.preventDefault();
+        $("input[name='dependencies']:checked").map(function () { selected.push(parseInt($(this).val()))});
+        layer_link_list = "<a href='"+layerURL+"'>"+layerName+"</a>";
+        if (selected.length > 1) {
+            updatetext = "" + selected.length + " layers added";
+        } else {
+            updatetext = "1 layer added";
+        }
+
+        for (var i = 0; i < selected.length; i++) {
+            for (var j = 0; j < dependencies.length; j++) {
+                if (dependencies[j].id == selected[i]) {
+                    layer_link_list+= ", <a href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
+                    break;
+                }
             }
+        }
+
+        $('#dependencies_modal').modal('hide');
+
+    {% if project %}
+        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function onXHRSuccess() {
+            show_alert("<strong>"+selected.length+"</strong> layer(s) added to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>:" + layer_link_list);
         });
+    {% endif %}
 
-        // enable add target button
-        $('#add-target-with-deps').removeAttr('disabled');
+    });
+    $('#dependencies_modal').modal('show');
+}
 
-        //edit columns functionality (show / hide table columns)
-        $("input:checkbox").change();
-            $("input:checkbox").change(function(){
-                var selectedType = $(this).val();
-                    if($(this).is(":checked")){
-                        $("."+selectedType).show();
+
+function layerAdd(layerId, layerName, layerURL) {
+    $.ajax({
+        url: '{% url "xhr_datatypeahead" %}',
+        data: {'type': 'layerdeps','value':layerId},
+        success: function(_data) {
+                if (_data.error != "ok") {
+                    alert(_data.error);
+                } else {
+                    if (_data.list.length > 0) {
+                        show_dependencies_modal(layerId, layerName, layerURL, _data.list);
                     }
-                    else{
-                        $("."+selectedType).hide();
+                    else {
+                        updatetext = "1 layer added";
+                        _makeXHREditCall({ 'layerAdd': layerId }, function () {
+        show_alert("<strong>1</strong> layer added to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>: <a href=\""+layerURL+"\">" + layerName +"</a>");
+                        });
                     }
-            });
-
-        //turn edit columns dropdown into a multi-select menu
-        $('.dropdown-menu input, .dropdown-menu label').click(function(e) {
-            e.stopPropagation();
-        });
-
-        //show tooltip with applied filter
-        $('#filtered').tooltip({container:'table', placement:'bottom', delay:{hide:1500}, html:true});
+                }
+            }
+    })
+}
 
-        $('#filtered').click(function() {
-            $(this).tooltip('hide');
-        });
+function button_set(id, state) {
+    var tohide, toshow;
+    if (state == "add")
+    {
+        toshow = "#layer-add-";
+        tohide = "#target-build-";
+    }
+    else if (state == "build")
+    {
+        tohide = "#layer-add-";
+        toshow = "#target-build-";
+    }
 
-        //show target added tooltip
-        $("#remove-target, #add-target, #add-target-with-deps2").tooltip({ trigger: 'manual' });
-
-        // add target without dependencies
-        $("#add-target").click(function(){
-            $('#target-removed').hide();
-            $('#target-added').html('<button type="button" class="close" data-dismiss="alert">&times;</button><strong>1</strong> target added to <a href="project-with-targets.html">your project</a>: <a href="#">meta-aarch64</a>').fadeIn();
-            $('#add-target').tooltip('show');
-            $("#add-target").hide();
-            $(".add-targets .tooltip").delay(2000).fadeOut(function(){
-                $("#remove-target").delay(300).fadeIn();
+    var previouslyvisible = $(tohide + id).is(":visible");
+    if (previouslyvisible) {
+        $(tohide + id).fadeOut( function() {
+            $("#layer-tooltip-" + id).text(updatetext);
+            $("#layer-tooltip-" + id).fadeIn().delay(2000).fadeOut(function(){
+                $(toshow + id).delay(300).fadeIn();
             });
         });
+    } else {
+        $(tohide + id).hide();
+        $("#layer-tooltip-" + id).hide();
+        $(toshow + id).show();
+    }
+};
 
-        // add target with dependencies
-        $(document).on("click", "#add-target-dependencies", function() {
-            $('#target-removed').hide();
-            $('#target-added').html('<button type="button" class="close" data-dismiss="alert">&times;</button><strong>3</strong> targets added to <a href="project-with-targets.html">your project</a>: <a href="#">meta-acer</a> and its dependencies <a href="#">meta-android</a> and <a href="#">meta-oe</a>').delay(400).fadeIn(function(){
-                $('#add-target-with-deps').tooltip('show');
-                $("#add-target-with-deps, #add-target-with-deps").hide();
-                $(".add-targets .tooltip").delay(2000).fadeOut(function(){
-                    $("#remove-target-with-deps").delay(300).fadeIn();
-                });
-            });
-        });
 
-        // delete target
-        $("#remove-target").click(function(){
-            $('#target-added').hide();
-            $('#target-removed').show();
-            $('#remove-target').tooltip('show');
-            $("#remove-target").hide();
-            $(".add-targets .tooltip").delay(2000).fadeOut(function(){
-                $("#add-target").delay(300).fadeIn();
-            });
-        });
+function updateButtons(projectLayers) {
+    var displayedLayers = [];
+    $(".add-layer").map(function () { displayedLayers.push( { "l": parseInt($(this).attr('layerversion_id')), "i": parseInt($(this).attr('value'))})});
+    for (var i=0; i < displayedLayers.length; i++) {
+        if (projectLayers.indexOf(displayedLayers[i].l) > -1) {
+            button_set(displayedLayers[i].i, "build");
+        }
+        else {
+            button_set(displayedLayers[i].i, "add");
+        }
+    }
+}
 
-     });
+$(document).ready(function (){
+    updateButtons({{projectlayerset}});
+});
 
 </script>
+{%endif%}
 
 {% endblock %}
diff --git a/bitbake/lib/toaster/toastergui/views.py b/bitbake/lib/toaster/toastergui/views.py
index e568ee7..b47eba2 100755
--- a/bitbake/lib/toaster/toastergui/views.py
+++ b/bitbake/lib/toaster/toastergui/views.py
@@ -123,7 +123,7 @@ def _redirect_parameters(view, g, mandatory_parameters, *args, **kwargs):
         params[i] = g[i]
     for i in mandatory_parameters:
         if not i in params:
-            params[i] = mandatory_parameters[i]
+            params[i] = urllib.unquote(str(mandatory_parameters[i]))
 
     return redirect(url + "?%s" % urllib.urlencode(params), *args, **kwargs)
 
@@ -202,6 +202,7 @@ def _get_search_results(search_term, queryset, model):
 
         search_objects.append(reduce(operator.or_, q_map))
     search_object = reduce(operator.and_, search_objects)
+    print "search objects", search_object
     queryset = queryset.filter(search_object)
 
     return queryset
@@ -1914,8 +1915,7 @@ if toastermain.settings.MANAGED:
                     login(request, user)
 
                 #  save the project
-                prj = Project.objects.create_project(name = request.POST['projectname'],
-                    release = Release.objects.get(pk = request.POST['projectversion']))
+                prj = Project.objects.create_project(name = request.POST['projectname'], release = Release.objects.get(pk = request.POST['projectversion']))
                 prj.user_id = request.user.pk
                 prj.save()
                 return redirect(reverse(project, args = (prj.pk,)) + "#/newproject")
@@ -1933,36 +1933,21 @@ if toastermain.settings.MANAGED:
 
 
     def _project_recent_build_list(prj):
-        # build requests not yet started
-        return (map(lambda x: {
-                "id":  x.pk,
-                "targets" : map(lambda y: {"target": y.target }, x.brtarget_set.all()),
-                "status": x.get_state_display(),
-            }, prj.buildrequest_set.filter(state__lt = BuildRequest.REQ_INPROGRESS).order_by("-pk")) +
-        # build requests started, but with no build yet
-            map(lambda x: {
+        return map(lambda x: {
                 "id":  x.pk,
-                "targets" : map(lambda y: {"target": y.target }, x.brtarget_set.all()),
-                "status": x.get_state_display(),
-            }, prj.buildrequest_set.filter(state = BuildRequest.REQ_INPROGRESS, build = None).order_by("-pk")) +
-        # build requests that failed
-            map(lambda x: {
-                "id":  x.pk,
-                "targets" : map(lambda y: {"target": y.target }, x.brtarget_set.all()),
+                "targets" : map(lambda y: {"target": y.target, "task": y.task }, x.brtarget_set.all()),
                 "status": x.get_state_display(),
                 "errors": map(lambda y: {"type": y.errtype, "msg": y.errmsg, "tb": y.traceback}, x.brerror_set.all()),
-            }, prj.buildrequest_set.filter(state = BuildRequest.REQ_FAILED).order_by("-pk")) +
-        # and already made builds
-            map(lambda x: {
-                "id": x.pk,
-                "targets": map(lambda y: {"target": y.target }, x.target_set.all()),
-                "status": x.get_outcome_display(),
-                "completed_on" : x.completed_on.strftime('%s')+"000",
-                "build_time" : (x.completed_on - x.started_on).total_seconds(),
-                "build_page_url" : reverse('builddashboard', args=(x.pk,)),
-                "completeper": x.completeper(),
-                "eta": x.eta().ctime(),
-            }, prj.build_set.all()))
+                "build" : map( lambda y: {"id": y.pk,
+                            "status": y.get_outcome_display(),
+                            "completed_on" : y.completed_on.strftime('%s')+"000",
+                            "build_time" : (y.completed_on - y.started_on).total_seconds(),
+                            "build_page_url" : reverse('builddashboard', args=(y.pk,)),
+                            "errors": y.errors_no,
+                            "warnings": y.warnings_no,
+                            "completeper": y.completeper(),
+                            "eta": y.eta().ctime()}, Build.objects.filter(buildrequest = x)),
+            }, prj.buildrequest_set.order_by("-pk")[:5])
 
 
     # Shows the edit project page
@@ -2025,10 +2010,14 @@ if toastermain.settings.MANAGED:
 
             if 'buildCancel' in request.POST:
                 for i in request.POST['buildCancel'].strip().split(" "):
-                    br = BuildRequest.objects.select_for_update().get(project = prj, pk = i, state__lte = BuildRequest.REQ_QUEUED)
-                    print "selected for delete", br.pk
-                    br.delete()
-                    print "selected for delete", br.pk
+                    try:
+                        br = BuildRequest.objects.select_for_update().get(project = prj, pk = i, state__lte = BuildRequest.REQ_QUEUED)
+                        print "selected for delete", br.pk
+                        br.delete()
+                        print "selected for delete", br.pk
+                    except BuildRequest.DoesNotExist:
+                        pass
+
 
             if 'targets' in request.POST:
                 ProjectTarget.objects.filter(project = prj).delete()
@@ -2059,7 +2048,7 @@ if toastermain.settings.MANAGED:
             # remove layers
             if 'layerDel' in request.POST:
                 for t in request.POST['layerDel'].strip().split(" "):
-                    pt = ProjectLayer.objects.get(project = prj, layercommit_id = int(t)).delete()
+                    pt = ProjectLayer.objects.filter(project = prj, layercommit_id = int(t)).delete()
 
             if 'projectName' in request.POST:
                 prj.name = request.POST['projectName']
@@ -2071,8 +2060,8 @@ if toastermain.settings.MANAGED:
                 prj.save()
                 # we need to change the layers
                 for i in prj.projectlayer_set.all():
-                    # find and add a similarly-named layer from the same layer source on the new branch
-                    lv = Layer_Version.objects.filter(layer_source = i.layercommit.layer_source, layer__name = i.layercommit.layer.name, up_branch__in = Branch.objects.filter(name = prj.release.branch))
+                    # find and add a similarly-named layer on the new branch
+                    lv = Layer_Version.objects.filter(layer__name = i.layercommit.layer.name, up_branch__release = prj.release)
                     if lv.count() == 1:
                         ProjectLayer.objects.get_or_create(project = prj, layercommit = lv[0])
                     # get rid of the old entry
@@ -2095,17 +2084,19 @@ if toastermain.settings.MANAGED:
     @csrf_exempt
     def xhr_datatypeahead(request):
         try:
+            # returns layers for current project release that are not in the project set
             if request.GET['type'] == "layers":
                 queryset_all = Layer_Version.objects.all()
                 if 'project_id' in request.session:
                     prj = Project.objects.get(pk = request.session['project_id'])
-                    queryset_all = queryset_all.filter(up_branch__in = Branch.objects.filter(name = prj.release.name)).exclude(pk__in = map(lambda x: x.layercommit_id, prj.projectlayer_set.all()))
+                    queryset_all = queryset_all.filter(up_branch__release = prj.release).exclude(pk__in = map(lambda x: x.layercommit_id, prj.projectlayer_set.all()))
                 queryset_all = queryset_all.filter(layer__name__icontains=request.GET.get('value',''))
                 return HttpResponse(json.dumps( { "error":"ok",
                     "list" : map( lambda x: {"id": x.pk, "name": x.layer.name, "detail": "(" + x.layer.layer_source.name + (")" if x.up_branch == None else " | "+x.up_branch.name+")")},
                             queryset_all[:8])
                     }), content_type = "application/json")
 
+            # returns layer dependencies for a layer, excluding current project layers
             if request.GET['type'] == "layerdeps":
                 queryset_all = LayerVersionDependency.objects.filter(layer_version_id = request.GET['value'])
 
@@ -2122,6 +2113,7 @@ if toastermain.settings.MANAGED:
                         map(lambda x: x.depends_on, queryset_all))
                     }), content_type = "application/json")
 
+            # returns layer versions that would be deleted on the new release__pk
             if request.GET['type'] == "versionlayers":
                 if not 'project_id' in request.session:
                     raise Exception("This call cannot makes no sense outside a project context")
@@ -2129,8 +2121,8 @@ if toastermain.settings.MANAGED:
                 retval = []
                 prj = Project.objects.get(pk = request.session['project_id'])
                 for i in prj.projectlayer_set.all():
-                    lv = Layer_Version.objects.filter(layer_source = i.layercommit.layer_source, layer__name = i.layercommit.layer.name, up_branch__in = Branch.objects.filter(name = Release.objects.get(pk=request.GET['value']).branch))
-                    if lv.count() != 1:
+                    lv = Layer_Version.objects.filter(layer__name = i.layercommit.layer.name, up_branch__release__pk=request.GET['value'])
+                    if lv.count() != 1:     # there is no layer_version with the new release id, and the same name
                         retval.append(i)
 
                 return HttpResponse(json.dumps( {"error":"ok",
@@ -2138,14 +2130,14 @@ if toastermain.settings.MANAGED:
                         lambda x: {"id": x.layercommit.pk, "name": x.layercommit.layer.name, "detail": "(" + x.layercommit.layer.layer_source.name + (")" if x.layercommit.up_branch == None else " | "+x.layercommit.up_branch.name+")")},
                         retval) }), content_type = "application/json")
 
-
+            # returns targets provided by current project layers
             if request.GET['type'] == "targets":
                 queryset_all = Recipe.objects.all()
                 if 'project_id' in request.session:
                     queryset_all = queryset_all.filter(layer_version__layer__in = map(lambda x: x.layercommit.layer, ProjectLayer.objects.filter(project_id=request.session['project_id'])))
                 return HttpResponse(json.dumps({ "error":"ok",
                     "list" : map ( lambda x: {"id": x.pk, "name": x.name, "detail":"[" + x.layer_version.layer.name+ (" | " + x.layer_version.up_branch.name + "]" if x.layer_version.up_branch is not None else "]")},
-                        queryset_all.filter(name__istartswith=request.GET.get('value',''))[:8]),
+                        queryset_all.filter(name__icontains=request.GET.get('value',''))[:8]),
 
                     }), content_type = "application/json")
 
@@ -2155,7 +2147,7 @@ if toastermain.settings.MANAGED:
                     queryset_all = queryset_all.filter(layer_version__layer__in = map(lambda x: x.layercommit.layer, ProjectLayer.objects.filter(project_id=request.session['project_id'])))
                 return HttpResponse(json.dumps({ "error":"ok",
                     "list" : map ( lambda x: {"id": x.pk, "name": x.name, "detail":"[" + x.layer_version.layer.name+ (" | " + x.layer_version.up_branch.name + "]" if x.layer_version.up_branch is not None else "]")},
-                        queryset_all.filter(name__istartswith=request.GET.get('value',''))[:8]),
+                        queryset_all.filter(name__icontains=request.GET.get('value',''))[:8]),
 
                     }), content_type = "application/json")
 
@@ -2173,11 +2165,15 @@ if toastermain.settings.MANAGED:
 
 
     def layers(request):
+        if not 'project_id' in request.session:
+            raise Exception("invalid page: cannot show page without a project")
+
         template = "layers.html"
         # define here what parameters the view needs in the GET portion in order to
         # be able to display something.  'count' and 'page' are mandatory for all views
         # that use paginators.
-        mandatory_parameters = { 'count': 10,  'page' : 1, 'orderby' : 'layer__name:+' };
+        (pagesize, orderby) = _get_parameters_values(request, 100, 'layer__name:+')
+        mandatory_parameters = { 'count': pagesize,  'page' : 1, 'orderby' : orderby };
         retval = _verify_parameters( request.GET, mandatory_parameters )
         if retval:
             return _redirect_parameters( 'layers', request.GET, mandatory_parameters)
@@ -2187,18 +2183,9 @@ if toastermain.settings.MANAGED:
         (filter_string, search_term, ordering_string) = _search_tuple(request, Layer_Version)
 
         queryset_all = Layer_Version.objects.all()
-        # mock an empty Project if we are outside project context
-        class _mockProject(object):
-            id = -1
-            class _mockManager(object):
-                def all(self):
-                    return []
-            projectlayer_set = _mockManager()
-        prj = _mockProject()
 
-        if 'project_id' in request.session:
-            prj = Project.objects.get(pk = request.session['project_id'])
-            queryset_all = queryset_all.filter(up_branch__in = Branch.objects.filter(name = prj.release.name))
+        prj = Project.objects.get(pk = request.session['project_id'])
+        queryset_all = queryset_all.filter(up_branch__release = prj.release)
 
         queryset_with_search = _get_queryset(Layer_Version, queryset_all, None, search_term, ordering_string, '-layer__name')
         queryset = _get_queryset(Layer_Version, queryset_all, filter_string, search_term, ordering_string, '-layer__name')
@@ -2265,7 +2252,6 @@ if toastermain.settings.MANAGED:
 
                     }
                 },
-
             ]
         }
 
@@ -2279,31 +2265,30 @@ if toastermain.settings.MANAGED:
         return render(request, template, context)
 
     def targets(request):
-        template = "targets.html"
-        # define here what parameters the view needs in the GET portion in order to
-        # be able to display something.  'count' and 'page' are mandatory for all views
-        # that use paginators.
-        mandatory_parameters = { 'count': 10,  'page' : 1, 'orderby' : 'name:+' };
+        if not 'project_id' in request.session:
+            raise Exception("invalid page: cannot show page without a project")
+
+        template = 'targets.html'
+        (pagesize, orderby) = _get_parameters_values(request, 100, 'name:+')
+        mandatory_parameters = { 'count': pagesize,  'page' : 1, 'orderby' : orderby }
         retval = _verify_parameters( request.GET, mandatory_parameters )
         if retval:
             return _redirect_parameters( 'targets', request.GET, mandatory_parameters)
-
-        # boilerplate code that takes a request for an object type and returns a queryset
-        # for that object type. copypasta for all needed table searches
         (filter_string, search_term, ordering_string) = _search_tuple(request, Recipe)
-
         queryset_all = Recipe.objects.all()
-        if 'project_id' in request.session:
-            queryset_all = queryset_all.filter(Q(layer_version__up_branch__in = Branch.objects.filter(name = Project.objects.get(pk=request.session['project_id']).release.name)) | Q(layer_version__build__in = Project.objects.get(pk = request.session['project_id']).build_set.all()))
+
+
+        prj = Project.objects.get(pk = request.session['project_id'])
+        queryset_all = queryset_all.filter(Q(layer_version__up_branch__release = prj.release) | Q(layer_version__build__in = prj.build_set.all()))
 
         queryset_with_search = _get_queryset(Recipe, queryset_all, None, search_term, ordering_string, '-name')
-        queryset = _get_queryset(Recipe, queryset_all, filter_string, search_term, ordering_string, '-name')
 
         # retrieve the objects that will be displayed in the table; targets a paginator and gets a page range to display
-        target_info = _build_page_range(Paginator(queryset, request.GET.get('count', 10)),request.GET.get('page', 1))
+        target_info = _build_page_range(Paginator(queryset_with_search, request.GET.get('count', 10)),request.GET.get('page', 1))
 
 
         context = {
+            'projectlayerset' : json.dumps(map(lambda x: x.layercommit.id, prj.projectlayer_set.all())),
             'objects' : target_info,
             'objectname' : "targets",
             'default_orderby' : 'name:+',
@@ -2329,13 +2314,19 @@ if toastermain.settings.MANAGED:
                 {   'name': 'Section',
                     'clclass': 'target-section',
                     'hidden': 1,
+                    'orderfield': _get_toggle_order(request, "section"),
+                    'ordericon': _get_toggle_order_icon(request, "section"),
                 },
                 {   'name': 'License',
                     'clclass': 'license',
                     'hidden': 1,
+                    'orderfield': _get_toggle_order(request, "license"),
+                    'ordericon': _get_toggle_order_icon(request, "license"),
                 },
                 {   'name': 'Layer',
                     'clclass': 'layer',
+                    'orderfield': _get_toggle_order(request, "layer_version__layer__name"),
+                    'ordericon': _get_toggle_order_icon(request, "layer_version__layer__name"),
                 },
                 {   'name': 'Layer source',
                     'clclass': 'source',
@@ -2345,20 +2336,32 @@ if toastermain.settings.MANAGED:
                     'filter': {
                         'class': 'target',
                         'label': 'Show:',
-                        'options': map(lambda x: (x.name, 'layer_source__pk:' + str(x.id), queryset_with_search.filter(layer_source__pk = x.id).count() ), LayerSource.objects.all()),
+                        'options': map(lambda x: ("Targets provided by " + x.name + " layers", 'layer_source__pk:' + str(x.id), queryset_with_search.filter(layer_source__pk = x.id).count() ), LayerSource.objects.all()),
                     }
                 },
                 {   'name': 'Branch, tag or commit',
                     'clclass': 'branch',
                     'hidden': 1,
                 },
+            ]
+        }
+
+        if 'project_id' in request.session:
+            context['tablecols'] += [
                 {   'name': 'Build',
                     'dclass': 'span2',
                     'qhelp': "Add or delete targets to / from your project ",
-                },
+                    'filter': {
+                        'class': 'add-layer',
+                        'label': 'Show:',
+                        'options': [
+              ('Targets provided by layers added to this project', "layer_version__projectlayer__project:" + str(prj.id), queryset_with_search.filter(layer_version__projectlayer__project = prj.id).count()),
+              ('Targets provided by layers not added to this project', "layer_version__projectlayer__project:NOT" + str(prj.id), queryset_with_search.exclude(layer_version__projectlayer__project = prj.id).count()),
+                                   ]
+
+                    }
+                }, ]
 
-            ]
-        }
 
         return render(request, template, context)
 
@@ -2378,7 +2381,7 @@ if toastermain.settings.MANAGED:
 
         queryset_all = Machine.objects.all()
 #        if 'project_id' in request.session:
-#            queryset_all = queryset_all.filter(Q(layer_version__up_branch__in = Branch.objects.filter(name = Project.objects.get(request.session['project_id']).release.name)) | Q(layer_version__build__in = Project.objects.get(request.session['project_id']).build_set.all()))
+#            queryset_all = queryset_all.filter(Q(layer_version__up_branch__release = Project.objects.get(request.session['project_id']).release) | Q(layer_version__build__in = Project.objects.get(request.session['project_id']).build_set.all()))
 
         queryset_with_search = _get_queryset(Machine, queryset_all, None, search_term, ordering_string, '-name')
         queryset = _get_queryset(Machine, queryset_all, filter_string, search_term, ordering_string, '-name')
@@ -2643,7 +2646,7 @@ if toastermain.settings.MANAGED:
     def projects(request):
         template="projects.html"
 
-        (pagesize, orderby) = _get_parameters_values(request, 10, 'updated:-')
+        (pagesize, orderby) = _get_parameters_values(request, 10, 'updated:+')
         mandatory_parameters = { 'count': pagesize,  'page' : 1, 'orderby' : orderby }
         retval = _verify_parameters( request.GET, mandatory_parameters )
         if retval:
@@ -2654,8 +2657,8 @@ if toastermain.settings.MANAGED:
         # boilerplate code that takes a request for an object type and returns a queryset
         # for that object type. copypasta for all needed table searches
         (filter_string, search_term, ordering_string) = _search_tuple(request, Project)
-        queryset_with_search = _get_queryset(Project, queryset_all, None, search_term, ordering_string, 'updated:-')
-        queryset = _get_queryset(Project, queryset_all, filter_string, search_term, ordering_string, 'updated:-')
+        queryset_with_search = _get_queryset(Project, queryset_all, None, search_term, ordering_string, '-updated')
+        queryset = _get_queryset(Project, queryset_all, filter_string, search_term, ordering_string, '-updated')
 
         # retrieve the objects that will be displayed in the table; projects a paginator and gets a page range to display
         project_info = _build_page_range(Paginator(queryset, pagesize), request.GET.get('page', 1))
-- 
1.9.1


