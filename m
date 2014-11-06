Return-Path: <alexandru.damian@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F4B1E008C9; Thu,  6 Nov 2014 03:21:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BA1DE00830
	for <poky@yoctoproject.org>; Thu,  6 Nov 2014 03:21:23 -0800 (PST)
Received: by mail-oi0-f52.google.com with SMTP id u20so573748oif.25
	for <poky@yoctoproject.org>; Thu, 06 Nov 2014 03:21:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YcmOA2F0H7vswJzRBj2BtF0w/zqBHGQOS/TLAn14XIU=;
	b=lxBf4ys1wo2jzst18cRR+K41x9faqIoQaLKbjGDENgUHhN1NTVwrSR9vA3BECMdR6O
	7uXwEawhMvWQ7bBCAb7w/jQYxvY4TKYOpTlZi2qz1xZU8w20Jt3k7hWqdYQo+eOXHihf
	5MQFpmjEge0VNYcgD5PNwb1mcPU6RZ3zYhkmW4FTCGRr+SVLb5TnXGT8zT7QM7qGSmZM
	VLZxvconFkiCYeIQkA77wmdfy0AN9MryxFDMGQEGbApNCmLKzpAUh2Zg/I+fMYs8ubz+
	rmcAwaPocg3W6KnusMAch/JyCatXwTdGu5ebfACjuoN0c7oXUX4x+XQa/no16FDFQeHp
	wGcw==
X-Gm-Message-State: ALoCoQm4sfe/by+CFeLfYe5BHvqRCBbZwW1KL1iR0d1bVaJY9ZciHcjbP304EGabOThVkUGYNImZ
X-Received: by 10.202.137.70 with SMTP id l67mr1227208oid.82.1415272882757;
	Thu, 06 Nov 2014 03:21:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.134.106 with HTTP; Thu, 6 Nov 2014 03:21:02 -0800 (PST)
In-Reply-To: <1415212925-10184-1-git-send-email-alexandru.damian@intel.com>
References: <1415212925-10184-1-git-send-email-alexandru.damian@intel.com>
From: "Damian, Alexandru" <alexandru.damian@intel.com>
Date: Thu, 6 Nov 2014 11:21:02 +0000
Message-ID: <CAJ2CSBuQczDmJ2TLr__-mUtheDE_4TfdUfTxJEEQoJ+hZ2-WYg@mail.gmail.com>
To: poky@yoctoproject.org
Cc: Alexandru DAMIAN <alexandru.damian@intel.com>
Subject: Re: [PATCH 1/1] bitbake: toastergui: Various fixes for projects, layers and targets page
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
X-List-Received-Date: Thu, 06 Nov 2014 11:21:38 -0000
Content-Type: multipart/alternative; boundary=001a113f0158701bc805072ee598

--001a113f0158701bc805072ee598
Content-Type: text/plain; charset=UTF-8

Please ignore this patch, it is the wrong patch :(


Alex

On Wed, Nov 5, 2014 at 6:42 PM, Alex DAMIAN <alexandru.damian@intel.com>
wrote:

> From: Alexandru DAMIAN <alexandru.damian@intel.com>
>
> This is a combined set of fixes for the project, layers and targets
> pages in the project section of toaster.
>
> The fixes correct behaviour and look in various parts of the page,
> including submitting XHR commands and updating the DOM with the correct
> info.
>
> Signed-off-by: Alexandru DAMIAN <alexandru.damian@intel.com>
> ---
>  bitbake/lib/toaster/bldcontrol/models.py           |  33 +-
>  .../lib/toaster/toastergui/static/css/default.css  |   4 +-
>  .../lib/toaster/toastergui/static/js/projectapp.js |  24 +-
>  bitbake/lib/toaster/toastergui/templates/base.html |   3 +-
>  .../toastergui/templates/basetable_bottom.html     |  13 +-
>  .../lib/toaster/toastergui/templates/layers.html   | 113 ++++---
>  .../toaster/toastergui/templates/mrb_section.html  |  17 +-
>  .../lib/toaster/toastergui/templates/project.html  |  48 +--
>  .../lib/toaster/toastergui/templates/targets.html  | 337
> +++++++++++++--------
>  bitbake/lib/toaster/toastergui/views.py            | 157 +++++-----
>  10 files changed, 453 insertions(+), 296 deletions(-)
>
> diff --git a/bitbake/lib/toaster/bldcontrol/models.py
> b/bitbake/lib/toaster/bldcontrol/models.py
> index 15270c3..23d9905 100644
> --- a/bitbake/lib/toaster/bldcontrol/models.py
> +++ b/bitbake/lib/toaster/bldcontrol/models.py
> @@ -42,11 +42,34 @@ class BuildEnvironment(models.Model):
>
>      def get_artifact_type(self, path):
>          if self.betype == BuildEnvironment.TYPE_LOCAL:
> -            import magic
> -            m = magic.open(magic.MAGIC_MIME_TYPE)
> -            m.load()
> -            return m.file(path)
> -        raise Exception("FIXME: not implemented")
> +            try:
> +                import magic
> +
> +                # fair warning: this is a mess; there are multiple
> competeing and incompatible
> +                # magic modules floating around, so we try some of the
> most common combinations
> +
> +                try:    # we try ubuntu's python-magic 5.4
> +                    m = magic.open(magic.MAGIC_MIME_TYPE)
> +                    m.load()
> +                    return m.file(path)
> +                except AttributeError:
> +                    pass
> +
> +                try:    # we try python-magic 0.4.6
> +                    m = magic.Magic(magic.MAGIC_MIME)
> +                    return m.from_file(path)
> +                except AttributeError:
> +                    pass
> +
> +                try:    # we try pip filemagic 1.6
> +                    m = magic.Magic(flags=magic.MAGIC_MIME_TYPE)
> +                    return m.id_filename(path)
> +                except AttributeError:
> +                    pass
> +
> +                return "binary/octet-stream"
> +            except ImportError:
> +                return "binary/octet-stream"
>
>      def get_artifact(self, path):
>          if self.betype == BuildEnvironment.TYPE_LOCAL:
> diff --git a/bitbake/lib/toaster/toastergui/static/css/default.css
> b/bitbake/lib/toaster/toastergui/static/css/default.css
> index 9e62c6c..fb20fc9 100644
> --- a/bitbake/lib/toaster/toastergui/static/css/default.css
> +++ b/bitbake/lib/toaster/toastergui/static/css/default.css
> @@ -61,8 +61,8 @@ dd p { line-height: 20px; }
>
>  /* Override default Twitter Boostrap styles for anchor tags inside tables
> */
>  td a, td a > code { color: #333333; }
> -td a > code { white-space: normal; }
> -td a:hover { color: #000000; text-decoration: underline; }
> +td code { white-space: normal; }
> +td a:hover, td a > code:hover { color: #000000; text-decoration:
> underline; }
>
>  /* Override default Twitter Bootstrap styles for tr.error */
>  .table tbody tr.error > td { background-color: transparent; } /* override
> default Bootstrap behaviour */
> diff --git a/bitbake/lib/toaster/toastergui/static/js/projectapp.js
> b/bitbake/lib/toaster/toastergui/static/js/projectapp.js
> index e674d8f..b347451 100644
> --- a/bitbake/lib/toaster/toastergui/static/js/projectapp.js
> +++ b/bitbake/lib/toaster/toastergui/static/js/projectapp.js
> @@ -92,6 +92,24 @@ projectApp.config(function($interpolateProvider) {
>      $interpolateProvider.endSymbol("]}");
>  });
>
> +
> +// add time interval to HH:mm filter
> +projectApp.filter('timediff', function() {
> +    return function(input) {
> +        function pad(j) {
> +            if (parseInt(j) < 10) {return "0" + j}
> +            return j;
> +        }
> +        seconds = parseInt(input);
> +        minutes = Math.floor(seconds / 60);
> +        seconds = seconds - minutes * 60;
> +        hours = Math.floor(seconds / 3600);
> +        seconds = seconds - hours * 3600;
> +        return pad(hours) + ":" + pad(minutes) + ":" + pad(seconds);
> +    }
> +});
> +
> +
>  // main controller for the project page
>  projectApp.controller('prjCtrl', function($scope, $modal, $http,
> $interval, $location, $cookies, $q, $sce) {
>
> @@ -150,7 +168,7 @@ projectApp.controller('prjCtrl', function($scope,
> $modal, $http, $interval, $loc
>
>                      // identify canceled builds here, so we can display
> them.
>                      _diffArrays(oldbuilds, $scope.builds,
> -                        function (e,f) { return e.status == f.status &&
> e.id == f.id }, // compare
> +                        function (e,f) { return e.id == f.id },
>                // compare
>                          undefined,
>               // added
>                          function (e) {
>               // deleted
>                              if (e.status == "deleted") return;
> @@ -421,7 +439,7 @@ projectApp.controller('prjCtrl', function($scope,
> $modal, $http, $interval, $loc
>          }).then( function () {
>              $scope.toggle(elementid);
>              if (data['projectVersion'] != undefined) {
> -                alertText += "<b>" + $scope.release.name + "</b>";
> +                alertText += "<b>" + $scope.project.release.name +
> "</b>";
>              }
>              $scope.displayAlert(alertZone, alertText, "alert-info");
>          });
> @@ -506,7 +524,7 @@ projectApp.controller('prjCtrl', function($scope,
> $modal, $http, $interval, $loc
>      // init code
>      //
>      $scope.init = function() {
> -        $scope.pollHandle = $interval(function () {
> $scope._makeXHRCall({method: "POST", url: $scope.urls.xhr_edit, data:
> undefined});}, 4000, 0);
> +        $scope.pollHandle = $interval(function () {
> $scope._makeXHRCall({method: "GET", url: $scope.urls.xhr_edit, data:
> undefined});}, 4000, 0);
>      }
>
>      $scope.init();
> diff --git a/bitbake/lib/toaster/toastergui/templates/base.html
> b/bitbake/lib/toaster/toastergui/templates/base.html
> index d414bfb..f377081 100644
> --- a/bitbake/lib/toaster/toastergui/templates/base.html
> +++ b/bitbake/lib/toaster/toastergui/templates/base.html
> @@ -1,6 +1,6 @@
>  <!DOCTYPE html>
>  {% load static %}
> -<html>
> +<html lang="en">
>      <head>
>          <title>{% if objectname %} {{objectname|title}} - {% endif
> %}Toaster</title>
>  <link rel="stylesheet" href="{% static 'css/bootstrap.min.css' %}"
> type="text/css">
> @@ -9,6 +9,7 @@
>  <link rel="stylesheet" href="{% static 'css/prettify.css' %}"
> type='text/css'>
>  <link rel="stylesheet" href="{% static 'css/default.css' %}"
> type='text/css'>
>  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
> +<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
>  <script src="{% static 'js/jquery-2.0.3.min.js' %}">
>  </script>
>  <script src="{% static 'js/jquery.cookie.js' %}">
> diff --git
> a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
> b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
> index 091e11a..d48ad92 100644
> --- a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
> +++ b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html
> @@ -58,9 +58,12 @@
>      }
>
>      // load cookie for number of entries to be displayed on page
> -    pagesize = $.cookie('count');
> -    if (!pagesize)
> -        pagesize = 10;
> +    if ({{request.GET.count}} != "") {
> +      pagesize = {{request.GET.count}};
> +    } else {
> +      pagesize = $.cookie('_count');
> +    }
> +
>      $('.pagesize option').prop('selected', false)
>                           .filter('[value="' + pagesize + '"]')
>                           .attr('selected', true);
> @@ -81,9 +84,9 @@
>      $('.progress, .lead span').tooltip({container:'table',
> placement:'top'});
>
>      $(".pagesize").change(function () {
> -        reload_params({"count":$(this).val()});
>          // save cookie with pagesize
> -        $.cookie("count", $(this).val(), { path :
> $(location).attr('pathname') });
> +        $.cookie("_count", $(this).val(), { path :
> $(location).attr('pathname') });
> +        reload_params({"count":$(this).val()});
>      });
>  });
>  </script>
> diff --git a/bitbake/lib/toaster/toastergui/templates/layers.html
> b/bitbake/lib/toaster/toastergui/templates/layers.html
> index 51f4dd9..3dd2b1f 100644
> --- a/bitbake/lib/toaster/toastergui/templates/layers.html
> +++ b/bitbake/lib/toaster/toastergui/templates/layers.html
> @@ -9,14 +9,14 @@
>  {% block projectinfomain %}
>                  <div class="page-header">
>                      <h1>
> -  {% if request.GET.search and objects.paginator.count > 0  %}
> +  {% if request.GET.filter and objects.paginator.count >  0 or
> request.GET.search and objects.paginator.count >  0 %}
>        {{objects.paginator.count}}
> layer{{objects.paginator.count|pluralize}} found
> -  {%elif request.GET.search and objects.paginator.count == 0%}
> -      No layer found
> +  {% elif request.GET.filter and objects.paginator.count ==  0 or
> request.GET.search and objects.paginator.count == 0 %}
> +      No layers found
>    {%else%}
>        All layers
>    {%endif%}
> -                        <i class="icon-question-sign get-help
> heading-help" title="This page lists all the layers compatible with " + {{
> project.release.name}} + " that Toaster knows about."></i>
> +                        <i class="icon-question-sign get-help
> heading-help" title="This page lists all the layers compatible with {{
> project.release.name}} that Toaster knows about."></i>
>                       </h1>
>                  </div>
>
> @@ -25,51 +25,51 @@
>    </div>
>
>
> -                <div id="layer-added" class="alert alert-info lead"
> style="display:none;"></div>
> -
> -
>  {% include "basetable_top_layers.html" %}
> -    {% for lv in objects %}
> +    {% for o in objects %}
>      <tr class="data">
> -            <td class="layer"><a href="{% url 'layerdetails' lv.id %}">{{
> lv.layer.name}}</a></td>
> -            <td class="description">{{lv.layer.summary}}</td>
> -            <td class="source"><a href="{% url 'layerdetails' lv.pk
> %}">{{lv.layer_source.name}}</a></td>
> -            <td class="git-repo"><a href="{% url 'layerdetails' lv.pk
> %}"><code>{{lv.layer.vcs_url}}</code></a>
> -            {% if lv.get_vcs_link_url %}
> -            <a target="_blank" href="{{ lv.get_vcs_link_url }}"><i
> class="icon-share get-info"></i></a>
> +            <td class="layer"><a href="{% url 'layerdetails' o.id %}">{{
> o.layer.name}}</a></td>
> +            <td class="description">{{o.layer.summary}}</td>
> +            <td class="source"><a href="{% url 'layerdetails' o.pk %}">{{
> o.layer_source.name}}</a></td>
> +            <td class="git-repo"><a href="{% url 'layerdetails' o.pk
> %}"><code>{{o.layer.vcs_url}}</code></a>
> +            {% if o.get_vcs_link_url %}
> +            <a target="_blank" href="{{ o.get_vcs_link_url }}"><i
> class="icon-share get-info"></i></a>
>          {% endif %}
>          </td>
> -            <td class="git-subdir" style="display: table-cell;"><a
> href="{% url 'layerdetails' lv.pk %}"><code>{{lv.dirpath}}</code></a>
> -                {% if lv.dirpath and lv.get_vcs_dirpath_link_url %}
> -            <a target="_blank" href="{{ lv.get_vcs_dirpath_link_url
> }}"><i class="icon-share get-info"></i></a>
> +            <td class="git-subdir" style="display: table-cell;"><a
> href="{% url 'layerdetails' o.pk %}"><code>{{o.dirpath}}</code></a>
> +                {% if o.dirpath and o.get_vcs_dirpath_link_url %}
> +            <a target="_blank" href="{{ o.get_vcs_dirpath_link_url }}"><i
> class="icon-share get-info"></i></a>
>                  {% endif %}
>          </td>
> -            <td class="branch">{% if lv.branch %}{{lv.branch}}{% else %}{{
> lv.up_branch.name}}{% endif %}</td>
> +            <td class="branch">{% if o.branch %}{{o.branch}}{% else %}{{
> o.up_branch.name}}{% endif %}</td>
>              <td class="dependencies">
> -        {% with lvds=lv.dependencies.all%}
> -            {% if lvds.count %}
> +        {% with ods=o.dependencies.all%}
> +            {% if ods.count %}
>                      <a class="btn"
> -                        title="<a href='{% url "layerdetails" lv.pk
> %}'>{{lv.layer.name}}</a> dependencies"
> +                        title="<a href='{% url "layerdetails" o.pk %}'>{{
> o.layer.name}}</a> dependencies"
>                          data-content="<ul class='unstyled'>
> -                          {% for i in lvds%}
> +                          {% for i in ods%}
>                              <li><a href='{% url "layerdetails"
> i.depends_on.pk %}'>{{i.depends_on.layer.name}}</a></li>
>                            {% endfor %}
>                          </ul>">
> -                        {{lvds.count}}
> +                        {{ods.count}}
>                      </a>
>              {% endif %}
>          {% endwith %}
>              </td>
> -            <td class="add-del-layers" value="{{lv.pk}}">
> -                <button id="layer-del-{{lv.pk}}" class="btn btn-danger
> btn-block remove-layer" style="display:none;" onclick="layerDel({{lv.pk}},
> '{{lv.layer.name}}', '{%url 'layerdetails' lv.pk%}')">
> +            {% if project %}
> +            <td class="add-del-layers" value="{{o.pk}}">
> +                <div id="layer-tooltip-{{o.pk}}" style="display: none;
> font-size: 11px; line-height: 1.3;" class="tooltip-inner">layer was
> modified</div>
> +                <button id="layer-del-{{o.pk}}" class="btn btn-danger
> btn-block remove-layer layerbtn" style="display:none;" onclick="layerDel({{
> o.pk}}, '{{o.layer.name}}', '{%url 'layerdetails' o.pk%}')" >
>                      <i class="icon-trash"></i>
>                      Delete layer
>                  </button>
> -                <button id="layer-add-{{lv.pk}}" class="btn btn-block"
> style="display:none;" onclick="layerAdd({{lv.pk}}, '{{lv.layer.name}}',
> '{%url 'layerdetails' lv.pk%}')" >
> +                <button id="layer-add-{{o.pk}}" class="btn btn-block
> layerbtn" style="display:none;" onclick="layerAdd({{o.pk}}, '{{
> o.layer.name}}', '{%url 'layerdetails' o.pk%}')" title="layer added">
>                      <i class="icon-plus"></i>
>                      Add layer
>                  </button>
>              </td>
> +            {% endif %}
>       </tr>
>      {% endfor %}
>  {% include "basetable_bottom.html" %}
> @@ -95,8 +95,11 @@
>          </form>
>      </div>
>
> +{% if project %}
>  <script>
>
> +var updatetext;
> +
>  function _makeXHREditCall(data, onsuccess, onfail) {
>      $.ajax( {
>          type: "POST",
> @@ -120,6 +123,7 @@ function _makeXHREditCall(data, onsuccess, onfail) {
>
>
>  function layerDel(layerId, layerName, layerURL) {
> +    updatetext = "1 layer deleted";
>      _makeXHREditCall({ 'layerDel': layerId }, function () {
>          show_alert("<strong>1</strong> layer deleted from <a href=\"{%
> url 'project' project.id%}\">{{project.name}}</a>: <a
> href=\""+layerURL+"\">" + layerName +"</a>");
>      });
> @@ -142,25 +146,35 @@ function show_dependencies_modal(layerId, layerName,
> layerURL, dependencies) {
>      }
>      $('#dependencies_list').html(deplistHtml);
>
> +    var selected = [layerId];
> +    var layer_link_list = "<a href='"+layerURL+"'>"+layerName+"</a>";
> +
>      $("#dependencies_modal_form").submit(function (e) {
>          e.preventDefault();
> -        var selected = [layerId];
>          $("input[name='dependencies']:checked").map(function () {
> selected.push(parseInt($(this).val()))});
> +        if (selected.length > 1) {
> +            updatetext = "" + selected.length + " layers added";
> +        } else {
> +            updatetext = "1 layer added";
> +        }
>
> -        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function () {
> -            var layer_link_list = "<a
> href='"+layerURL+"'>"+layerName+"</a>";
> -            for (var i = 0; i < selected.length; i++) {
> -                for (var j = 0; j < dependencies.length; i++) {
> -                    if (dependencies[j].id == selected[i]) {
> -                        layer_link_list+= ", <a
> href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
> -                        break;
> -                    }
> +        for (var i = 0; i < selected.length; i++) {
> +            for (var j = 0; j < dependencies.length; j++) {
> +                if (dependencies[j].id == selected[i]) {
> +                    layer_link_list+= ", <a
> href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
> +                    break;
>                  }
>              }
> +        }
> +
> +        $('#dependencies_modal').modal('hide');
>
> -            $('#dependencies_modal').modal('hide');
> +    {% if project %}
> +        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function () {
>              show_alert("<strong>"+selected.length+"</strong> layers added
> to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>:" +
> layer_link_list);
>          });
> +    {% endif %}
> +
>      });
>      $('#dependencies_modal').modal('show');
>  }
> @@ -178,6 +192,7 @@ function layerAdd(layerId, layerName, layerURL) {
>                          show_dependencies_modal(layerId, layerName,
> layerURL, _data.list);
>                      }
>                      else {
> +                        updatetext = "1 layer added";
>                          _makeXHREditCall({ 'layerAdd': layerId },
> function () {
>          show_alert("<strong>1</strong> layer added to <a href=\"{% url
> 'project' project.id%}\">{{project.name}}</a>: <a href=\""+layerURL+"\">"
> + layerName +"</a>");
>                          });
> @@ -188,15 +203,31 @@ function layerAdd(layerId, layerName, layerURL) {
>  }
>
>  function button_set(id, state) {
> +    var tohide, toshow;
>      if (state == "add")
>      {
> -        $("#layer-add-" + id).show();
> -        $("#layer-del-" + id).hide();
> +        tohide = "#layer-del-";
> +        toshow = "#layer-add-";
>      }
>      else if (state == "del")
>      {
> -        $("#layer-add-" + id).hide();
> -        $("#layer-del-" + id).show();
> +        tohide = "#layer-add-";
> +        toshow = "#layer-del-";
> +    }
> +
> +
> +    var previouslyvisible = $(tohide + id).is(":visible");
> +    if (previouslyvisible) {
> +        $(tohide + id).fadeOut( function() {
> +            $("#layer-tooltip-" + id).text(updatetext);
> +            $("#layer-tooltip-" +
> id).fadeIn().delay(2000).fadeOut(function(){
> +                $(toshow + id).delay(300).fadeIn();
> +            });
> +        });
> +    } else {
> +        $(tohide + id).hide();
> +        $("#layer-tooltip-" + id).hide();
> +        $(toshow + id).show();
>      }
>  };
>
> @@ -214,9 +245,11 @@ function updateButtons(projectLayers) {
>  }
>
>  $(document).ready(function (){
> +    $('.layerbtn').tooltip({ trigger: 'manual' });
>      updateButtons({{projectlayerset}});
>  });
>
>  </script>
> +{%endif%}
>
>  {% endblock %}
> diff --git a/bitbake/lib/toaster/toastergui/templates/mrb_section.html
> b/bitbake/lib/toaster/toastergui/templates/mrb_section.html
> index 5ba0b08..586c47b 100644
> --- a/bitbake/lib/toaster/toastergui/templates/mrb_section.html
> +++ b/bitbake/lib/toaster/toastergui/templates/mrb_section.html
> @@ -44,7 +44,7 @@
>                  Build time: <a href="{% url 'buildtime' build.pk %}">{{
> build.timespent|sectohms }}</a>
>                </span>
>            {% if build.project %}
> -              <a class="btn {%if build.outcome ==
> build.SUCCEEDED%}btn-success{%elif build.outcome ==
> build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right"
> onclick="scheduleBuild({{build.project.name|json}},
> {{build.get_sorted_target_list|mapselect:'target'|json}})">Run again</a>
> +              <a class="btn {%if build.outcome ==
> build.SUCCEEDED%}btn-success{%elif build.outcome ==
> build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right"
> onclick="scheduleBuild({% url 'xhr_projectbuild' build.project.id as
> bpi%}{{bpi|json}}, {{build.project.name|json}},
> {{build.get_sorted_target_list|mapselect:'target'|json}})">Run again</a>
>            {% endif %}
>              </div>
>      {%endif%}
> @@ -64,10 +64,10 @@
>
>  <script>
>
> -function _makeXHRBuildCall(data, onsuccess, onfail) {
> +function _makeXHRBuildCall(url, data, onsuccess, onfail) {
>      $.ajax( {
>          type: "POST",
> -        url: "{% url 'xhr_projectbuild' project.id %}",
> +        url: url,
>          data: data,
>          headers: { 'X-CSRFToken' : $.cookie('csrftoken')},
>          success: function (_data) {
> @@ -81,19 +81,18 @@ function _makeXHRBuildCall(data, onsuccess, onfail) {
>              alert("Call failed");
>              console.log(_data);
>              if (onfail) onfail(data);
> -        }
> -    });
> +        } });
>  }
>
>
> -function scheduleBuild(projectName, buildlist) {
> +function scheduleBuild(url, projectName, buildlist) {
>    console.log("scheduleBuild");
> -//  _makeXHRBuildCall({targets: buildlist.join(" ")}, function (_data) {
> +  _makeXHRBuildCall(url, {targets: buildlist.join(" ")}, function (_data)
> {
>
> -  $('#latest-builds').prepend('<div class="alert alert-info"
> style="padding-top:0px">' + '<span class="label label-info"
> style="font-weight: normal; margin-bottom: 5px; margin-left:-15px;
> padding-top:5px;">'+projectName+'</span><div class="row-fluid">' +
> +      $('#latest-builds').prepend('<div class="alert alert-info"
> style="padding-top:0px">' + '<span class="label label-info"
> style="font-weight: normal; margin-bottom: 5px; margin-left:-15px;
> padding-top:5px;">'+projectName+'</span><div class="row-fluid">' +
>    '<div class="span4 lead">' + buildlist.join(" ") +
>    '</div><div class="span4 lead pull-right">Build queued. Your build will
> start shortly.</div></div></div>');
> -//  }
> +  });
>  }
>
>  </script>
> diff --git a/bitbake/lib/toaster/toastergui/templates/project.html
> b/bitbake/lib/toaster/toastergui/templates/project.html
> index 9399b31..6a81283 100644
> --- a/bitbake/lib/toaster/toastergui/templates/project.html
> +++ b/bitbake/lib/toaster/toastergui/templates/project.html
> @@ -76,6 +76,14 @@ vim: expandtab tabstop=2
>        </div>
>    </script>
>
> +  <script type="text/ng-template" id="target_display">
> +      <div ng-switch on="t.task.length">
> +        <div ng-switch-when="0">{[t.target]}</div>
> +        <div ng-switch-default>{[t.target]}:{[t.task]}</div>
> +      </div>
> +  </script>
> +
> +
>    <!-- build form -->
>    <div class="well">
>      <form class="build-form" ng-submit="targetNamedBuild()">
> @@ -99,11 +107,11 @@ vim: expandtab tabstop=2
>
>    <h2 class="air" ng-if="builds.length">Latest builds</h2>
>
> -  <div class="alert" ng-repeat="b in builds"
> ng-class="{'queued':'alert-info', 'deleted':'alert-info', 'in progress':
> 'alert-info', 'In Progress':'alert-info', 'Succeeded':'alert-success',
> 'failed':'alert-error', 'Failed':'alert-error'}[b.status]">
> +  <div class="alert" ng-repeat="b in builds"
> ng-class="{'queued':'alert-info', 'deleted':'alert-info', 'in progress':
> 'alert-info', 'failed':'alert-error', 'completed':{'In
> Progress':'alert-info', 'Succeeded':'alert-success',
> 'Failed':'alert-error'}[b.build[0].status]}[b.status]"  >
>      <div class="row-fluid">
>          <switch ng-switch="b.status">
>            <case ng-switch-when="failed">
> -            <div class="lead span3"> <span ng-repeat="t in
> b.targets">{[t.target]} </span>   </div>
> +            <div class="lead span3"> <span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span>   </div>
>              <div class="row-fluid">
>                <div class="air well" ng-repeat="e in b.errors">
>                  {[e.type]}: <pre>{[e.msg]}</pre>
> @@ -111,53 +119,51 @@ vim: expandtab tabstop=2
>              </div>
>            </case>
>            <case ng-switch-when="queued">
> -            <div class="lead span5"> <span ng-repeat="t in
> b.targets">{[t.target]} </span>   </div>
> +            <div class="lead span5"> <span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span>   </div>
>              <div class="span4 lead" >Build queued
>                <i title="This build will start as soon as a build server
> is available" class="icon-question-sign get-help get-help-blue
> heading-help" data-toggle="tooltip"></i>
>              </div>
>              <button class="btn pull-right btn-info" ng-click="buildCancel(
> b.id)">Cancel</button>
>            </case>
>            <case ng-switch-when="created">
> -            <div class="lead span3"> <span ng-repeat="t in
> b.targets">{[t.target]} </span>   </div>
> +            <div class="lead span3"> <span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span>   </div>
>              <div class="span6" >
>                <span class="lead">Creating build</span>
>              </div>
>              <button class="btn pull-right btn-info" ng-click="buildCancel(
> b.id)">Cancel</button>
>            </case>
>            <case ng-switch-when="deleted">
> -            <div class="lead span3"> <span ng-repeat="t in
> b.targets">{[t.target]} </span>   </div>
> +            <div class="lead span3"> <span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span>   </div>
>              <div class="span6" id="{[b.id]}-deleted" >
>                <span class="lead">Build deleted</span>
>              </div>
>              <button class="btn pull-right btn-info"
> ng-click="builds.splice(builds.indexOf(b), 1)">Close</button>
>            </case>
>            <case ng-switch-when="in progress">
> -            <div class="lead span3"> <span ng-repeat="t in
> b.targets">{[t.target]} </span>   </div>
> -            <div class="span4" >
> -            </div>
> -            <div class="lead pull-right">Build starting shortly</div>
> -          </case>
> -          <case ng-switch-when="In Progress">
> +            <div class="lead span3"> <span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span>   </div>
>              <div class="span4" >
> -                <div class="progress" style="margin-top:5px;"
> data-toggle="tooltip" tooltip="{[b.completeper]}% of tasks complete">
> -                    <div style="width: {[b.completeper]}%;"
> class="bar"></div>
> +                <div class="progress" style="margin-top:5px;"
> data-toggle="tooltip" tooltip="{[b.build[0].completeper]}% of tasks
> complete">
> +                    <div style="width: {[b.build[0].completeper]}%;"
> class="bar"></div>
>                  </div>
>              </div>
> -            <div class="lead pull-right">ETA: at {[b.eta]}</div>
> +            <div class="lead pull-right">ETA: at
> {[b.build[0].eta|date:"shortDate"]}</div>
>            </case>
> -          <case ng-switch-default="">
> -            <div class="lead span3"><a href="{[b.build_page_url]}"><span
> ng-repeat="t in b.targets">{[t.target]} </span>   </div></a>
> +          <case ng-switch-when="completed">
> +            <div class="lead span3"><a
> href="{[b.build[0].build_page_url]}"><span ng-repeat="t in b.targets"
> ng-include src="'target_display'"></span></a></div>
>              <div class="span2 lead">
> -             {[b.completed_on|date:'dd/MM/yy HH:mm']}
> +             {[b.build[0].completed_on|date:'dd/MM/yy HH:mm']}
>              </div>
> -            <div class="span2"><span>{[b.errors.len]}</span></div>
> -            <div class="span2"><span>{[b.warnings.len]}</span></div>
> -            <div> <span class="lead">Build time:
> {[b.build_time|date:"HH:mm"]}</span>
> -                <button class="btn pull-right" ng-class="{'Succeeded':
> 'btn-success', 'Failed': 'btn-danger'}[b.status]"
> +            <div class="span2"><span><a
> href="{[b.build[0].build_page_url]}#errors" class="lead error"
> ng-if="b.build[0].errors">{[b.build[0].errors]}</a></span></div>
> +            <div class="span2"><span><a
> href="{[b.build[0].build_page_url]}#warnings" class="lead warning"
> ng-if="b.build[0].warnings">{[b.build[0].warnings]}</a></span></div>
> +            <div> <span class="lead">Build time:
> {[b.build[0].build_time|timediff]}</span>
> +                <button class="btn pull-right" ng-class="{'Succeeded':
> 'btn-success', 'Failed': 'btn-danger'}[b.build[0].status]"
>                      ng-click="targetExistingBuild(b.targets)">Run
> again</button>
>
>              </div>
>            </case>
> +          <case ng-switch-default="">
> +          <div>FIXME!</div>
> +          </case>
>          </switch>
>        <div class="lead pull-right">
>        </div>
> diff --git a/bitbake/lib/toaster/toastergui/templates/targets.html
> b/bitbake/lib/toaster/toastergui/templates/targets.html
> index 3afdf0a..042d0fc 100644
> --- a/bitbake/lib/toaster/toastergui/templates/targets.html
> +++ b/bitbake/lib/toaster/toastergui/templates/targets.html
> @@ -9,55 +9,74 @@
>  {% block projectinfomain %}
>                  <div class="page-header">
>                      <h1>
> -                        All targets
> -                        <i class="icon-question-sign get-help
> heading-help" title="This page lists all the targets compatible with Yocto
> Project 1.7 'Dxxxx' that Toaster knows about. They include
> community-created targets suitable for use on top of OpenEmbedded Core and
> any targets you have imported"></i>
> +  {% if request.GET.filter and objects.paginator.count >  0 or
> request.GET.search and objects.paginator.count >  0 %}
> +      {{objects.paginator.count}}
> target{{objects.paginator.count|pluralize}} found
> +  {% elif request.GET.filter and objects.paginator.count ==  0 or
> request.GET.search and objects.paginator.count == 0 %}
> +      No targets found
> +  {%else%}
> +      All targets
> +  {%endif%}
> +                        <i class="icon-question-sign get-help
> heading-help" title="This page lists all the targets compatible with " + {{
> project.release.name}} + " that Toaster knows about."></i>
>                       </h1>
>                  </div>
> -                <!--div class="alert">
> -                    <div class="input-append" style="margin-bottom:0px;">
> -                        <input class="input-xxlarge" type="text"
> placeholder="Search targets" value="browser" />
> -                        <a class="add-on btn">
> -                            <i class="icon-remove"></i>
> -                        </a>
> -                        <button class="btn" type="button">Search</button>
> -                        <a class="btn btn-link" href="#">Show all
> targets</a>
> -                    </div>
> -                </div-->
> -                <div id="target-added" class="alert alert-info lead"
> style="display:none;"></div>
> -                <div id="target-removed" class="alert alert-info lead"
> style="display:none;">
> -                    <button type="button" class="close"
> data-dismiss="alert">&times;</button>
> -                    <strong>1</strong> target deleted from <a
> href="project-with-targets.html">your project</a>: <a
> href="#">meta-aarch64</a>
> -                </div>
>
> +  <div id="zone1alerts">
> +
> +  </div>
> +
> +{% if objects.paginator.count == 0 %}
> +  <div class="row-fluid">
> +      <div class="alert">
> +        <form class="no-results input-append" id="searchform">
> +            <input id="search" name="search" class="input-xxlarge"
> type="text" value="{{request.GET.search}}"/>{% if request.GET.search %}<a
> href="javascript:$('#search').val('');searchform.submit()" class="add-on
> btn" tabindex="-1"><i class="icon-remove"></i></a>{% endif %}
> +            <button class="btn" type="submit"
> value="Search">Search</button>
> +            <button class="btn btn-link"
> onclick="javascript:$('#search').val('');searchform.submit()">Show all
> targets</button>
> +        </form>
> +      </div>
> +  </div>
> +
> +{% else %}
>
>  {% include "basetable_top.html" %}
>      {% for o in objects %}
>      <tr class="data">
> -       <td class="target">
> -               {{o.name}} ({{o.id}}, {{o.up_id}})
> -               <a target="_blank"
> href="{{o.get_layersource_view_url}}"><i class="icon-share
> get-info"></i></a>
> -       </td>
> -       <td class="version">{{o.version}}</td>
> -       <td class="description">{{o.description}}</td>
> -       <td class="recipe-file">
> -               <code>{{o.file_path}}</code>
> -               <a href="{{o.get_vcs_link_url}}" target="_blank"><i
> class="icon-share get-info"></i></a>
> -       </td>
> -       <td class="target-section">{{o.section}}</td>
> -       <td class="license">{{o.license}}</td>
> -       <td class="layer"><a href="#">{{o.layer_version.layer.name
> }}</a></td>
> -       <td class="source">{{o.layer_source.name}}</td>
> -       <td class="branch">{{o.layer_version.commit}}</td>
> -       <td class="build">
> -               <a id="build-target"
> href="project-with-targets.html?target=3g-router-image" class="btn
> btn-block" style="display:none;">
> -                       Build target
> -               </a>
> -               <a id="add-layer" href="#" class="btn btn-block nopop"
> title="1 layer added">
> -                       <i class="icon-plus"></i>
> -                       Add layer
> -                       <i class="icon-question-sign get-help" title="To
> build this target, you must first add the meta-embeddedgeeks layer to your
> project"></i>
> -               </a>
> -       </td>
> +        <td class="target">
> +                {{o.name}}
> +                <a target="_blank"
> href="{{o.get_layersource_view_url}}"><i class="icon-share
> get-info"></i></a>
> +        </td>
> +        <td class="version">{{o.version}}</td>
> +        <td class="description">{% if o.description %}{{o.description}}{%
> else %}{{o.summary}}{%endif%}</td>
> +        <td class="recipe-file">
> +                <code>{{o.file_path}}</code>
> +                <a href="{{o.get_vcs_link_url}}{{o.file_path}}"
> target="_blank"><i class="icon-share get-info"></i></a>
> +        </td>
> +        <td class="target-section">{{o.section}}</td>
> +        <td class="license">{{o.license}}</td>
> +        <td class="layer"><a href="{% url 'layerdetails'
> o.layer_version.id%}">{{o.layer_version.layer.name}}</a></td>
> +        <td class="source">{{o.layer_source.name}}</td>
> +        <td class="branch">
> +        {% if o.layer_version.up_branch %}
> +            {{o.layer_version.up_branch.name}}
> +        {% else %}
> +        <a class="btn"
> +                data-content="<ul class='unstyled'>
> +                  <li>{{o.layer_version.commit}}</li>
> +                </ul>">
> +                {{o.layer_version.commit|truncatechars:13}}
> +            </a>
> +            {% endif %}
> +        </td>
> +        <td class="add-layer" value="{{o.pk}}" layerversion_id="{{
> o.layer_version.pk}}">
> +            <div id="layer-tooltip-{{o.pk}}" style="display: none;
> font-size: 11px; line-height: 1.3;" class="tooltip-inner">layer was
> modified</div>
> +            <a href="{% url 'project' project.id %}#/targetbuild={{o.name}}"
> id="target-build-{{o.pk}}" class="btn btn-block remove-layer"
> style="display:none;" >
> +                Build target
> +            </a>
> +            <a id="layer-add-{{o.pk}}" class="btn btn-block"
> style="display:none;" href="javascript:layerAdd({{o.layer_version.pk}},
> '{{o.layer_version.layer.name}}', '{%url 'layerdetails' o.layer_version.pk%}')"
> >
> +                <i class="icon-plus"></i>
> +                Add layer
> +                <i title="" class="icon-question-sign get-help"
> data-original-title="To build this target, you must first add the {{
> o.layer_version.layer.name}} layer to your project"></i>
> +            </a>
> +        </td>
>      </tr>
>      {% endfor %}
>  {% include "basetable_bottom.html" %}
> @@ -65,122 +84,174 @@
>      <!-- Modals -->
>
>      <!-- 'Layer dependencies modal' -->
> -    <div id="dependencies-message" class="modal hide fade" tabindex="-1"
> role="dialog" aria-hidden="true">
> +    <div id="dependencies_modal" class="modal hide fade" tabindex="-1"
> role="dialog" aria-hidden="true">
> +        <form id="dependencies_modal_form">
>          <div class="modal-header">
>              <button type="button" class="close" data-dismiss="modal"
> aria-hidden="true">x</button>
> -            <h3>meta-acer dependencies</h3>
> +            <h3><span class="layer-name"></span> dependencies</h3>
>          </div>
>          <div class="modal-body">
> -            <p><strong>meta-acer</strong> depends on some targets that
> are not added to your project. Select the ones you want to add:</p>
> -            <ul class="unstyled">
> -                <li>
> -                    <label class="checkbox">
> -                        <input type="checkbox" checked="checked">
> -                        meta-android
> -                    </label>
> -                </li>
> -                <li>
> -                    <label class="checkbox">
> -                        <input type="checkbox" checked="checked">
> -                        meta-oe
> -                    </label>
> -                </li>
> +            <p><strong class="layer-name"></strong> depends on some
> layers that are not added to your project. Select the ones you want to
> add:</p>
> +            <ul class="unstyled" id="dependencies_list">
>              </ul>
>          </div>
>          <div class="modal-footer">
> -            <button id="add-target-dependencies" type="submit" class="btn
> btn-primary" data-dismiss="modal" >Add targets</button>
> -            <button class="btn" data-dismiss="modal">Cancel</button>
> +            <button class="btn btn-primary" type="submit">Add
> layers</button>
> +            <button class="btn" type="reset"
> data-dismiss="modal">Cancel</button>
>          </div>
> +        </form>
>      </div>
>
> -    <script src="assets/js/jquery-1.9.1.min.js"
> type='text/javascript'></script>
> -    <script src="assets/js/jquery.tablesorter.min.js"
> type='text/javascript'></script>
> -    <script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
> -    <script src="assets/js/bootstrap.min.js"
> type='text/javascript'></script>
> -    <script src="assets/js/prettify.js" type='text/javascript'></script>
> -    <script src="assets/js/jit.js" type='text/javascript'></script>
> -    <script src="assets/js/main.js" type='text/javascript'></script>
> -
> -    <script>
> -     $(document).ready(function() {
> -
> -        //show or hide selected columns on load
> -        $("input:checkbox").each(function(){
> -            var selectedType = $(this).val();
> -            if($(this).is(":checked")){
> -                $("."+selectedType).show();
> +{% endif %}
> +
> +{% if project %}
> +<script>
> +
> +var updatetext;
> +
> +function _makeXHREditCall(data, onsuccess, onfail) {
> +    $.ajax( {
> +        type: "POST",
> +        url: "{% url 'xhr_projectedit' project.id %}",
> +        data: data,
> +        headers: { 'X-CSRFToken' : $.cookie('csrftoken')},
> +        success: function (_data) {
> +            if (_data.error != "ok") {
> +                alert(_data.error);
> +            } else {
> +                updateButtons(_data.layers.map(function (e) {return e.id
> }));
> +                if (onsuccess != undefined) onsuccess(_data);
>              }
> -            else{
> -                $("."+selectedType).hide();
> +        },
> +        error: function (_data) {
> +            alert("Call failed");
> +            console.log(_data);
> +        }
> +    });
> +}
> +
> +function show_alert(text, cls) {
> +    $("#zone1alerts").html("<div class=\"alert alert-info lead\"><button
> type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>" +
> text + "</div>");
> +}
> +
> +
> +function show_dependencies_modal(layerId, layerName, layerURL,
> dependencies) {
> +    // update layer name
> +    $('.layer-name').text(layerName);
> +    var deplistHtml = "";
> +    for (var i = 0; i < dependencies.length; i++) {
> +        deplistHtml += "<li><label class=\"checkbox\"><input
> name=\"dependencies\" value=\""
> +        deplistHtml += dependencies[i].id;
> +        deplistHtml +="\" type=\"checkbox\" checked=\"checked\"/>";
> +        deplistHtml += dependencies[i].name;
> +        deplistHtml += "</label></li>";
> +    }
> +    $('#dependencies_list').html(deplistHtml);
> +
> +    var selected = [layerId];
> +    var layer_link_list = undefined;
> +
> +    $("#dependencies_modal_form").submit(function (e) {
> +        e.preventDefault();
> +        $("input[name='dependencies']:checked").map(function () {
> selected.push(parseInt($(this).val()))});
> +        layer_link_list = "<a href='"+layerURL+"'>"+layerName+"</a>";
> +        if (selected.length > 1) {
> +            updatetext = "" + selected.length + " layers added";
> +        } else {
> +            updatetext = "1 layer added";
> +        }
> +
> +        for (var i = 0; i < selected.length; i++) {
> +            for (var j = 0; j < dependencies.length; j++) {
> +                if (dependencies[j].id == selected[i]) {
> +                    layer_link_list+= ", <a
> href='"+dependencies[j].layerdetailurl+"'>"+dependencies[j].name+"</a>"
> +                    break;
> +                }
>              }
> +        }
> +
> +        $('#dependencies_modal').modal('hide');
> +
> +    {% if project %}
> +        _makeXHREditCall({ 'layerAdd': selected.join(",") }, function
> onXHRSuccess() {
> +            show_alert("<strong>"+selected.length+"</strong> layer(s)
> added to <a href=\"{% url 'project' project.id%}\">{{project.name}}</a>:"
> + layer_link_list);
>          });
> +    {% endif %}
>
> -        // enable add target button
> -        $('#add-target-with-deps').removeAttr('disabled');
> +    });
> +    $('#dependencies_modal').modal('show');
> +}
>
> -        //edit columns functionality (show / hide table columns)
> -        $("input:checkbox").change();
> -            $("input:checkbox").change(function(){
> -                var selectedType = $(this).val();
> -                    if($(this).is(":checked")){
> -                        $("."+selectedType).show();
> +
> +function layerAdd(layerId, layerName, layerURL) {
> +    $.ajax({
> +        url: '{% url "xhr_datatypeahead" %}',
> +        data: {'type': 'layerdeps','value':layerId},
> +        success: function(_data) {
> +                if (_data.error != "ok") {
> +                    alert(_data.error);
> +                } else {
> +                    if (_data.list.length > 0) {
> +                        show_dependencies_modal(layerId, layerName,
> layerURL, _data.list);
>                      }
> -                    else{
> -                        $("."+selectedType).hide();
> +                    else {
> +                        updatetext = "1 layer added";
> +                        _makeXHREditCall({ 'layerAdd': layerId },
> function () {
> +        show_alert("<strong>1</strong> layer added to <a href=\"{% url
> 'project' project.id%}\">{{project.name}}</a>: <a href=\""+layerURL+"\">"
> + layerName +"</a>");
> +                        });
>                      }
> -            });
> -
> -        //turn edit columns dropdown into a multi-select menu
> -        $('.dropdown-menu input, .dropdown-menu label').click(function(e)
> {
> -            e.stopPropagation();
> -        });
> -
> -        //show tooltip with applied filter
> -        $('#filtered').tooltip({container:'table', placement:'bottom',
> delay:{hide:1500}, html:true});
> +                }
> +            }
> +    })
> +}
>
> -        $('#filtered').click(function() {
> -            $(this).tooltip('hide');
> -        });
> +function button_set(id, state) {
> +    var tohide, toshow;
> +    if (state == "add")
> +    {
> +        toshow = "#layer-add-";
> +        tohide = "#target-build-";
> +    }
> +    else if (state == "build")
> +    {
> +        tohide = "#layer-add-";
> +        toshow = "#target-build-";
> +    }
>
> -        //show target added tooltip
> -        $("#remove-target, #add-target,
> #add-target-with-deps2").tooltip({ trigger: 'manual' });
> -
> -        // add target without dependencies
> -        $("#add-target").click(function(){
> -            $('#target-removed').hide();
> -            $('#target-added').html('<button type="button" class="close"
> data-dismiss="alert">&times;</button><strong>1</strong> target added to <a
> href="project-with-targets.html">your project</a>: <a
> href="#">meta-aarch64</a>').fadeIn();
> -            $('#add-target').tooltip('show');
> -            $("#add-target").hide();
> -            $(".add-targets .tooltip").delay(2000).fadeOut(function(){
> -                $("#remove-target").delay(300).fadeIn();
> +    var previouslyvisible = $(tohide + id).is(":visible");
> +    if (previouslyvisible) {
> +        $(tohide + id).fadeOut( function() {
> +            $("#layer-tooltip-" + id).text(updatetext);
> +            $("#layer-tooltip-" +
> id).fadeIn().delay(2000).fadeOut(function(){
> +                $(toshow + id).delay(300).fadeIn();
>              });
>          });
> +    } else {
> +        $(tohide + id).hide();
> +        $("#layer-tooltip-" + id).hide();
> +        $(toshow + id).show();
> +    }
> +};
>
> -        // add target with dependencies
> -        $(document).on("click", "#add-target-dependencies", function() {
> -            $('#target-removed').hide();
> -            $('#target-added').html('<button type="button" class="close"
> data-dismiss="alert">&times;</button><strong>3</strong> targets added to <a
> href="project-with-targets.html">your project</a>: <a
> href="#">meta-acer</a> and its dependencies <a href="#">meta-android</a>
> and <a href="#">meta-oe</a>').delay(400).fadeIn(function(){
> -                $('#add-target-with-deps').tooltip('show');
> -                $("#add-target-with-deps, #add-target-with-deps").hide();
> -                $(".add-targets .tooltip").delay(2000).fadeOut(function(){
> -                    $("#remove-target-with-deps").delay(300).fadeIn();
> -                });
> -            });
> -        });
>
> -        // delete target
> -        $("#remove-target").click(function(){
> -            $('#target-added').hide();
> -            $('#target-removed').show();
> -            $('#remove-target').tooltip('show');
> -            $("#remove-target").hide();
> -            $(".add-targets .tooltip").delay(2000).fadeOut(function(){
> -                $("#add-target").delay(300).fadeIn();
> -            });
> -        });
> +function updateButtons(projectLayers) {
> +    var displayedLayers = [];
> +    $(".add-layer").map(function () { displayedLayers.push( { "l":
> parseInt($(this).attr('layerversion_id')), "i":
> parseInt($(this).attr('value'))})});
> +    for (var i=0; i < displayedLayers.length; i++) {
> +        if (projectLayers.indexOf(displayedLayers[i].l) > -1) {
> +            button_set(displayedLayers[i].i, "build");
> +        }
> +        else {
> +            button_set(displayedLayers[i].i, "add");
> +        }
> +    }
> +}
>
> -     });
> +$(document).ready(function (){
> +    updateButtons({{projectlayerset}});
> +});
>
>  </script>
> +{%endif%}
>
>  {% endblock %}
> diff --git a/bitbake/lib/toaster/toastergui/views.py
> b/bitbake/lib/toaster/toastergui/views.py
> index e568ee7..b47eba2 100755
> --- a/bitbake/lib/toaster/toastergui/views.py
> +++ b/bitbake/lib/toaster/toastergui/views.py
> @@ -123,7 +123,7 @@ def _redirect_parameters(view, g,
> mandatory_parameters, *args, **kwargs):
>          params[i] = g[i]
>      for i in mandatory_parameters:
>          if not i in params:
> -            params[i] = mandatory_parameters[i]
> +            params[i] = urllib.unquote(str(mandatory_parameters[i]))
>
>      return redirect(url + "?%s" % urllib.urlencode(params), *args,
> **kwargs)
>
> @@ -202,6 +202,7 @@ def _get_search_results(search_term, queryset, model):
>
>          search_objects.append(reduce(operator.or_, q_map))
>      search_object = reduce(operator.and_, search_objects)
> +    print "search objects", search_object
>      queryset = queryset.filter(search_object)
>
>      return queryset
> @@ -1914,8 +1915,7 @@ if toastermain.settings.MANAGED:
>                      login(request, user)
>
>                  #  save the project
> -                prj = Project.objects.create_project(name =
> request.POST['projectname'],
> -                    release = Release.objects.get(pk =
> request.POST['projectversion']))
> +                prj = Project.objects.create_project(name =
> request.POST['projectname'], release = Release.objects.get(pk =
> request.POST['projectversion']))
>                  prj.user_id = request.user.pk
>                  prj.save()
>                  return redirect(reverse(project, args = (prj.pk,)) +
> "#/newproject")
> @@ -1933,36 +1933,21 @@ if toastermain.settings.MANAGED:
>
>
>      def _project_recent_build_list(prj):
> -        # build requests not yet started
> -        return (map(lambda x: {
> -                "id":  x.pk,
> -                "targets" : map(lambda y: {"target": y.target },
> x.brtarget_set.all()),
> -                "status": x.get_state_display(),
> -            }, prj.buildrequest_set.filter(state__lt =
> BuildRequest.REQ_INPROGRESS).order_by("-pk")) +
> -        # build requests started, but with no build yet
> -            map(lambda x: {
> +        return map(lambda x: {
>                  "id":  x.pk,
> -                "targets" : map(lambda y: {"target": y.target },
> x.brtarget_set.all()),
> -                "status": x.get_state_display(),
> -            }, prj.buildrequest_set.filter(state =
> BuildRequest.REQ_INPROGRESS, build = None).order_by("-pk")) +
> -        # build requests that failed
> -            map(lambda x: {
> -                "id":  x.pk,
> -                "targets" : map(lambda y: {"target": y.target },
> x.brtarget_set.all()),
> +                "targets" : map(lambda y: {"target": y.target, "task":
> y.task }, x.brtarget_set.all()),
>                  "status": x.get_state_display(),
>                  "errors": map(lambda y: {"type": y.errtype, "msg":
> y.errmsg, "tb": y.traceback}, x.brerror_set.all()),
> -            }, prj.buildrequest_set.filter(state =
> BuildRequest.REQ_FAILED).order_by("-pk")) +
> -        # and already made builds
> -            map(lambda x: {
> -                "id": x.pk,
> -                "targets": map(lambda y: {"target": y.target },
> x.target_set.all()),
> -                "status": x.get_outcome_display(),
> -                "completed_on" : x.completed_on.strftime('%s')+"000",
> -                "build_time" : (x.completed_on -
> x.started_on).total_seconds(),
> -                "build_page_url" : reverse('builddashboard', args=(x.pk
> ,)),
> -                "completeper": x.completeper(),
> -                "eta": x.eta().ctime(),
> -            }, prj.build_set.all()))
> +                "build" : map( lambda y: {"id": y.pk,
> +                            "status": y.get_outcome_display(),
> +                            "completed_on" :
> y.completed_on.strftime('%s')+"000",
> +                            "build_time" : (y.completed_on -
> y.started_on).total_seconds(),
> +                            "build_page_url" : reverse('builddashboard',
> args=(y.pk,)),
> +                            "errors": y.errors_no,
> +                            "warnings": y.warnings_no,
> +                            "completeper": y.completeper(),
> +                            "eta": y.eta().ctime()},
> Build.objects.filter(buildrequest = x)),
> +            }, prj.buildrequest_set.order_by("-pk")[:5])
>
>
>      # Shows the edit project page
> @@ -2025,10 +2010,14 @@ if toastermain.settings.MANAGED:
>
>              if 'buildCancel' in request.POST:
>                  for i in request.POST['buildCancel'].strip().split(" "):
> -                    br =
> BuildRequest.objects.select_for_update().get(project = prj, pk = i,
> state__lte = BuildRequest.REQ_QUEUED)
> -                    print "selected for delete", br.pk
> -                    br.delete()
> -                    print "selected for delete", br.pk
> +                    try:
> +                        br =
> BuildRequest.objects.select_for_update().get(project = prj, pk = i,
> state__lte = BuildRequest.REQ_QUEUED)
> +                        print "selected for delete", br.pk
> +                        br.delete()
> +                        print "selected for delete", br.pk
> +                    except BuildRequest.DoesNotExist:
> +                        pass
> +
>
>              if 'targets' in request.POST:
>                  ProjectTarget.objects.filter(project = prj).delete()
> @@ -2059,7 +2048,7 @@ if toastermain.settings.MANAGED:
>              # remove layers
>              if 'layerDel' in request.POST:
>                  for t in request.POST['layerDel'].strip().split(" "):
> -                    pt = ProjectLayer.objects.get(project = prj,
> layercommit_id = int(t)).delete()
> +                    pt = ProjectLayer.objects.filter(project = prj,
> layercommit_id = int(t)).delete()
>
>              if 'projectName' in request.POST:
>                  prj.name = request.POST['projectName']
> @@ -2071,8 +2060,8 @@ if toastermain.settings.MANAGED:
>                  prj.save()
>                  # we need to change the layers
>                  for i in prj.projectlayer_set.all():
> -                    # find and add a similarly-named layer from the same
> layer source on the new branch
> -                    lv = Layer_Version.objects.filter(layer_source =
> i.layercommit.layer_source, layer__name = i.layercommit.layer.name,
> up_branch__in = Branch.objects.filter(name = prj.release.branch))
> +                    # find and add a similarly-named layer on the new
> branch
> +                    lv = Layer_Version.objects.filter(layer__name =
> i.layercommit.layer.name, up_branch__release = prj.release)
>                      if lv.count() == 1:
>                          ProjectLayer.objects.get_or_create(project = prj,
> layercommit = lv[0])
>                      # get rid of the old entry
> @@ -2095,17 +2084,19 @@ if toastermain.settings.MANAGED:
>      @csrf_exempt
>      def xhr_datatypeahead(request):
>          try:
> +            # returns layers for current project release that are not in
> the project set
>              if request.GET['type'] == "layers":
>                  queryset_all = Layer_Version.objects.all()
>                  if 'project_id' in request.session:
>                      prj = Project.objects.get(pk =
> request.session['project_id'])
> -                    queryset_all = queryset_all.filter(up_branch__in =
> Branch.objects.filter(name = prj.release.name)).exclude(pk__in =
> map(lambda x: x.layercommit_id, prj.projectlayer_set.all()))
> +                    queryset_all = queryset_all.filter(up_branch__release
> = prj.release).exclude(pk__in = map(lambda x: x.layercommit_id,
> prj.projectlayer_set.all()))
>                  queryset_all =
> queryset_all.filter(layer__name__icontains=request.GET.get('value',''))
>                  return HttpResponse(json.dumps( { "error":"ok",
>                      "list" : map( lambda x: {"id": x.pk, "name":
> x.layer.name, "detail": "(" + x.layer.layer_source.name + (")" if
> x.up_branch == None else " | "+x.up_branch.name+")")},
>                              queryset_all[:8])
>                      }), content_type = "application/json")
>
> +            # returns layer dependencies for a layer, excluding current
> project layers
>              if request.GET['type'] == "layerdeps":
>                  queryset_all =
> LayerVersionDependency.objects.filter(layer_version_id =
> request.GET['value'])
>
> @@ -2122,6 +2113,7 @@ if toastermain.settings.MANAGED:
>                          map(lambda x: x.depends_on, queryset_all))
>                      }), content_type = "application/json")
>
> +            # returns layer versions that would be deleted on the new
> release__pk
>              if request.GET['type'] == "versionlayers":
>                  if not 'project_id' in request.session:
>                      raise Exception("This call cannot makes no sense
> outside a project context")
> @@ -2129,8 +2121,8 @@ if toastermain.settings.MANAGED:
>                  retval = []
>                  prj = Project.objects.get(pk =
> request.session['project_id'])
>                  for i in prj.projectlayer_set.all():
> -                    lv = Layer_Version.objects.filter(layer_source =
> i.layercommit.layer_source, layer__name = i.layercommit.layer.name,
> up_branch__in = Branch.objects.filter(name =
> Release.objects.get(pk=request.GET['value']).branch))
> -                    if lv.count() != 1:
> +                    lv = Layer_Version.objects.filter(layer__name =
> i.layercommit.layer.name, up_branch__release__pk=request.GET['value'])
> +                    if lv.count() != 1:     # there is no layer_version
> with the new release id, and the same name
>                          retval.append(i)
>
>                  return HttpResponse(json.dumps( {"error":"ok",
> @@ -2138,14 +2130,14 @@ if toastermain.settings.MANAGED:
>                          lambda x: {"id": x.layercommit.pk, "name":
> x.layercommit.layer.name, "detail": "(" +
> x.layercommit.layer.layer_source.name + (")" if x.layercommit.up_branch
> == None else " | "+x.layercommit.up_branch.name+")")},
>                          retval) }), content_type = "application/json")
>
> -
> +            # returns targets provided by current project layers
>              if request.GET['type'] == "targets":
>                  queryset_all = Recipe.objects.all()
>                  if 'project_id' in request.session:
>                      queryset_all =
> queryset_all.filter(layer_version__layer__in = map(lambda x:
> x.layercommit.layer,
> ProjectLayer.objects.filter(project_id=request.session['project_id'])))
>                  return HttpResponse(json.dumps({ "error":"ok",
>                      "list" : map ( lambda x: {"id": x.pk, "name": x.name,
> "detail":"[" + x.layer_version.layer.name+ (" | " +
> x.layer_version.up_branch.name + "]" if x.layer_version.up_branch is not
> None else "]")},
> -
> queryset_all.filter(name__istartswith=request.GET.get('value',''))[:8]),
> +
> queryset_all.filter(name__icontains=request.GET.get('value',''))[:8]),
>
>                      }), content_type = "application/json")
>
> @@ -2155,7 +2147,7 @@ if toastermain.settings.MANAGED:
>                      queryset_all =
> queryset_all.filter(layer_version__layer__in = map(lambda x:
> x.layercommit.layer,
> ProjectLayer.objects.filter(project_id=request.session['project_id'])))
>                  return HttpResponse(json.dumps({ "error":"ok",
>                      "list" : map ( lambda x: {"id": x.pk, "name": x.name,
> "detail":"[" + x.layer_version.layer.name+ (" | " +
> x.layer_version.up_branch.name + "]" if x.layer_version.up_branch is not
> None else "]")},
> -
> queryset_all.filter(name__istartswith=request.GET.get('value',''))[:8]),
> +
> queryset_all.filter(name__icontains=request.GET.get('value',''))[:8]),
>
>                      }), content_type = "application/json")
>
> @@ -2173,11 +2165,15 @@ if toastermain.settings.MANAGED:
>
>
>      def layers(request):
> +        if not 'project_id' in request.session:
> +            raise Exception("invalid page: cannot show page without a
> project")
> +
>          template = "layers.html"
>          # define here what parameters the view needs in the GET portion
> in order to
>          # be able to display something.  'count' and 'page' are mandatory
> for all views
>          # that use paginators.
> -        mandatory_parameters = { 'count': 10,  'page' : 1, 'orderby' :
> 'layer__name:+' };
> +        (pagesize, orderby) = _get_parameters_values(request, 100,
> 'layer__name:+')
> +        mandatory_parameters = { 'count': pagesize,  'page' : 1,
> 'orderby' : orderby };
>          retval = _verify_parameters( request.GET, mandatory_parameters )
>          if retval:
>              return _redirect_parameters( 'layers', request.GET,
> mandatory_parameters)
> @@ -2187,18 +2183,9 @@ if toastermain.settings.MANAGED:
>          (filter_string, search_term, ordering_string) =
> _search_tuple(request, Layer_Version)
>
>          queryset_all = Layer_Version.objects.all()
> -        # mock an empty Project if we are outside project context
> -        class _mockProject(object):
> -            id = -1
> -            class _mockManager(object):
> -                def all(self):
> -                    return []
> -            projectlayer_set = _mockManager()
> -        prj = _mockProject()
>
> -        if 'project_id' in request.session:
> -            prj = Project.objects.get(pk = request.session['project_id'])
> -            queryset_all = queryset_all.filter(up_branch__in =
> Branch.objects.filter(name = prj.release.name))
> +        prj = Project.objects.get(pk = request.session['project_id'])
> +        queryset_all = queryset_all.filter(up_branch__release =
> prj.release)
>
>          queryset_with_search = _get_queryset(Layer_Version, queryset_all,
> None, search_term, ordering_string, '-layer__name')
>          queryset = _get_queryset(Layer_Version, queryset_all,
> filter_string, search_term, ordering_string, '-layer__name')
> @@ -2265,7 +2252,6 @@ if toastermain.settings.MANAGED:
>
>                      }
>                  },
> -
>              ]
>          }
>
> @@ -2279,31 +2265,30 @@ if toastermain.settings.MANAGED:
>          return render(request, template, context)
>
>      def targets(request):
> -        template = "targets.html"
> -        # define here what parameters the view needs in the GET portion
> in order to
> -        # be able to display something.  'count' and 'page' are mandatory
> for all views
> -        # that use paginators.
> -        mandatory_parameters = { 'count': 10,  'page' : 1, 'orderby' :
> 'name:+' };
> +        if not 'project_id' in request.session:
> +            raise Exception("invalid page: cannot show page without a
> project")
> +
> +        template = 'targets.html'
> +        (pagesize, orderby) = _get_parameters_values(request, 100,
> 'name:+')
> +        mandatory_parameters = { 'count': pagesize,  'page' : 1,
> 'orderby' : orderby }
>          retval = _verify_parameters( request.GET, mandatory_parameters )
>          if retval:
>              return _redirect_parameters( 'targets', request.GET,
> mandatory_parameters)
> -
> -        # boilerplate code that takes a request for an object type and
> returns a queryset
> -        # for that object type. copypasta for all needed table searches
>          (filter_string, search_term, ordering_string) =
> _search_tuple(request, Recipe)
> -
>          queryset_all = Recipe.objects.all()
> -        if 'project_id' in request.session:
> -            queryset_all =
> queryset_all.filter(Q(layer_version__up_branch__in =
> Branch.objects.filter(name =
> Project.objects.get(pk=request.session['project_id']).release.name)) |
> Q(layer_version__build__in = Project.objects.get(pk =
> request.session['project_id']).build_set.all()))
> +
> +
> +        prj = Project.objects.get(pk = request.session['project_id'])
> +        queryset_all =
> queryset_all.filter(Q(layer_version__up_branch__release = prj.release) |
> Q(layer_version__build__in = prj.build_set.all()))
>
>          queryset_with_search = _get_queryset(Recipe, queryset_all, None,
> search_term, ordering_string, '-name')
> -        queryset = _get_queryset(Recipe, queryset_all, filter_string,
> search_term, ordering_string, '-name')
>
>          # retrieve the objects that will be displayed in the table;
> targets a paginator and gets a page range to display
> -        target_info = _build_page_range(Paginator(queryset,
> request.GET.get('count', 10)),request.GET.get('page', 1))
> +        target_info = _build_page_range(Paginator(queryset_with_search,
> request.GET.get('count', 10)),request.GET.get('page', 1))
>
>
>          context = {
> +            'projectlayerset' : json.dumps(map(lambda x: x.layercommit.id,
> prj.projectlayer_set.all())),
>              'objects' : target_info,
>              'objectname' : "targets",
>              'default_orderby' : 'name:+',
> @@ -2329,13 +2314,19 @@ if toastermain.settings.MANAGED:
>                  {   'name': 'Section',
>                      'clclass': 'target-section',
>                      'hidden': 1,
> +                    'orderfield': _get_toggle_order(request, "section"),
> +                    'ordericon': _get_toggle_order_icon(request,
> "section"),
>                  },
>                  {   'name': 'License',
>                      'clclass': 'license',
>                      'hidden': 1,
> +                    'orderfield': _get_toggle_order(request, "license"),
> +                    'ordericon': _get_toggle_order_icon(request,
> "license"),
>                  },
>                  {   'name': 'Layer',
>                      'clclass': 'layer',
> +                    'orderfield': _get_toggle_order(request,
> "layer_version__layer__name"),
> +                    'ordericon': _get_toggle_order_icon(request,
> "layer_version__layer__name"),
>                  },
>                  {   'name': 'Layer source',
>                      'clclass': 'source',
> @@ -2345,20 +2336,32 @@ if toastermain.settings.MANAGED:
>                      'filter': {
>                          'class': 'target',
>                          'label': 'Show:',
> -                        'options': map(lambda x: (x.name,
> 'layer_source__pk:' + str(x.id),
> queryset_with_search.filter(layer_source__pk = x.id).count() ),
> LayerSource.objects.all()),
> +                        'options': map(lambda x: ("Targets provided by "
> + x.name + " layers", 'layer_source__pk:' + str(x.id),
> queryset_with_search.filter(layer_source__pk = x.id).count() ),
> LayerSource.objects.all()),
>                      }
>                  },
>                  {   'name': 'Branch, tag or commit',
>                      'clclass': 'branch',
>                      'hidden': 1,
>                  },
> +            ]
> +        }
> +
> +        if 'project_id' in request.session:
> +            context['tablecols'] += [
>                  {   'name': 'Build',
>                      'dclass': 'span2',
>                      'qhelp': "Add or delete targets to / from your
> project ",
> -                },
> +                    'filter': {
> +                        'class': 'add-layer',
> +                        'label': 'Show:',
> +                        'options': [
> +              ('Targets provided by layers added to this project',
> "layer_version__projectlayer__project:" + str(prj.id),
> queryset_with_search.filter(layer_version__projectlayer__project = prj.id
> ).count()),
> +              ('Targets provided by layers not added to this project',
> "layer_version__projectlayer__project:NOT" + str(prj.id),
> queryset_with_search.exclude(layer_version__projectlayer__project = prj.id
> ).count()),
> +                                   ]
> +
> +                    }
> +                }, ]
>
> -            ]
> -        }
>
>          return render(request, template, context)
>
> @@ -2378,7 +2381,7 @@ if toastermain.settings.MANAGED:
>
>          queryset_all = Machine.objects.all()
>  #        if 'project_id' in request.session:
> -#            queryset_all =
> queryset_all.filter(Q(layer_version__up_branch__in =
> Branch.objects.filter(name =
> Project.objects.get(request.session['project_id']).release.name)) |
> Q(layer_version__build__in =
> Project.objects.get(request.session['project_id']).build_set.all()))
> +#            queryset_all =
> queryset_all.filter(Q(layer_version__up_branch__release =
> Project.objects.get(request.session['project_id']).release) |
> Q(layer_version__build__in =
> Project.objects.get(request.session['project_id']).build_set.all()))
>
>          queryset_with_search = _get_queryset(Machine, queryset_all, None,
> search_term, ordering_string, '-name')
>          queryset = _get_queryset(Machine, queryset_all, filter_string,
> search_term, ordering_string, '-name')
> @@ -2643,7 +2646,7 @@ if toastermain.settings.MANAGED:
>      def projects(request):
>          template="projects.html"
>
> -        (pagesize, orderby) = _get_parameters_values(request, 10,
> 'updated:-')
> +        (pagesize, orderby) = _get_parameters_values(request, 10,
> 'updated:+')
>          mandatory_parameters = { 'count': pagesize,  'page' : 1,
> 'orderby' : orderby }
>          retval = _verify_parameters( request.GET, mandatory_parameters )
>          if retval:
> @@ -2654,8 +2657,8 @@ if toastermain.settings.MANAGED:
>          # boilerplate code that takes a request for an object type and
> returns a queryset
>          # for that object type. copypasta for all needed table searches
>          (filter_string, search_term, ordering_string) =
> _search_tuple(request, Project)
> -        queryset_with_search = _get_queryset(Project, queryset_all, None,
> search_term, ordering_string, 'updated:-')
> -        queryset = _get_queryset(Project, queryset_all, filter_string,
> search_term, ordering_string, 'updated:-')
> +        queryset_with_search = _get_queryset(Project, queryset_all, None,
> search_term, ordering_string, '-updated')
> +        queryset = _get_queryset(Project, queryset_all, filter_string,
> search_term, ordering_string, '-updated')
>
>          # retrieve the objects that will be displayed in the table;
> projects a paginator and gets a page range to display
>          project_info = _build_page_range(Paginator(queryset, pagesize),
> request.GET.get('page', 1))
> --
> 1.9.1
>
>


-- 
Alex Damian
Yocto Project
SSG / OTC

--001a113f0158701bc805072ee598
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Please ignore this patch, it is the wrong patch :(<br><br><br></=
div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif">Al=
ex<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Nov 5, 2014 at 6:42 PM, Alex DAMIAN <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alexandru.damian@intel.com" target=3D"_blank">alexandru.damian@i=
ntel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">From: Al=
exandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@intel.com">alexandru.=
damian@intel.com</a>&gt;<br>
<br>
This is a combined set of fixes for the project, layers and targets<br>
pages in the project section of toaster.<br>
<br>
The fixes correct behaviour and look in various parts of the page,<br>
including submitting XHR commands and updating the DOM with the correct<br>
info.<br>
<br>
Signed-off-by: Alexandru DAMIAN &lt;<a href=3D"mailto:alexandru.damian@inte=
l.com">alexandru.damian@intel.com</a>&gt;<br>
---<br>
=C2=A0bitbake/lib/toaster/bldcontrol/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 33 +-<br>
=C2=A0.../lib/toaster/toastergui/static/css/default.css=C2=A0 |=C2=A0 =C2=
=A04 +-<br>
=C2=A0.../lib/toaster/toastergui/static/js/projectapp.js |=C2=A0 24 +-<br>
=C2=A0bitbake/lib/toaster/toastergui/templates/base.html |=C2=A0 =C2=A03 +-=
<br>
=C2=A0.../toastergui/templates/basetable_bottom.html=C2=A0 =C2=A0 =C2=A0|=
=C2=A0 13 +-<br>
=C2=A0.../lib/toaster/toastergui/templates/layers.html=C2=A0 =C2=A0| 113 ++=
++---<br>
=C2=A0.../toaster/toastergui/templates/mrb_section.html=C2=A0 |=C2=A0 17 +-=
<br>
=C2=A0.../lib/toaster/toastergui/templates/project.html=C2=A0 |=C2=A0 48 +-=
-<br>
=C2=A0.../lib/toaster/toastergui/templates/targets.html=C2=A0 | 337 +++++++=
++++++--------<br>
=C2=A0bitbake/lib/toaster/toastergui/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 157 +++++-----<br>
=C2=A010 files changed, 453 insertions(+), 296 deletions(-)<br>
<br>
diff --git a/bitbake/lib/toaster/bldcontrol/models.py b/bitbake/lib/toaster=
/bldcontrol/models.py<br>
index 15270c3..23d9905 100644<br>
--- a/bitbake/lib/toaster/bldcontrol/models.py<br>
+++ b/bitbake/lib/toaster/bldcontrol/models.py<br>
@@ -42,11 +42,34 @@ class BuildEnvironment(models.Model):<br>
<br>
=C2=A0 =C2=A0 =C2=A0def get_artifact_type(self, path):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.betype =3D=3D BuildEnvironment.TY=
PE_LOCAL:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 import magic<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m =3D magic.open(magic.MAGIC_MIM=
E_TYPE)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m.load()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return m.file(path)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Exception(&quot;FIXME: not implemented&q=
uot;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 import magic<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # fair warning: th=
is is a mess; there are multiple competeing and incompatible<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # magic modules fl=
oating around, so we try some of the most common combinations<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=C2=A0 =C2=A0 =
# we try ubuntu&#39;s python-magic 5.4<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m =
=3D magic.open(magic.MAGIC_MIME_TYPE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m.lo=
ad()<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn m.file(path)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except AttributeEr=
ror:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass=
<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=C2=A0 =C2=A0 =
# we try python-magic 0.4.6<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m =
=3D magic.Magic(magic.MAGIC_MIME)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn m.from_file(path)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except AttributeEr=
ror:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass=
<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=C2=A0 =C2=A0 =
# we try pip filemagic 1.6<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m =
=3D magic.Magic(flags=3Dmagic.MAGIC_MIME_TYPE)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn m.id_filename(path)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except AttributeEr=
ror:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pass=
<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return &quot;binar=
y/octet-stream&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except ImportError:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return &quot;binar=
y/octet-stream&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0def get_artifact(self, path):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if self.betype =3D=3D BuildEnvironment.TY=
PE_LOCAL:<br>
diff --git a/bitbake/lib/toaster/toastergui/static/css/default.css b/bitbak=
e/lib/toaster/toastergui/static/css/default.css<br>
index 9e62c6c..fb20fc9 100644<br>
--- a/bitbake/lib/toaster/toastergui/static/css/default.css<br>
+++ b/bitbake/lib/toaster/toastergui/static/css/default.css<br>
@@ -61,8 +61,8 @@ dd p { line-height: 20px; }<br>
<br>
=C2=A0/* Override default Twitter Boostrap styles for anchor tags inside ta=
bles */<br>
=C2=A0td a, td a &gt; code { color: #333333; }<br>
-td a &gt; code { white-space: normal; }<br>
-td a:hover { color: #000000; text-decoration: underline; }<br>
+td code { white-space: normal; }<br>
+td a:hover, td a &gt; code:hover { color: #000000; text-decoration: underl=
ine; }<br>
<br>
=C2=A0/* Override default Twitter Bootstrap styles for tr.error */<br>
=C2=A0.table tbody tr.error &gt; td { background-color: transparent; } /* o=
verride default Bootstrap behaviour */<br>
diff --git a/bitbake/lib/toaster/toastergui/static/js/projectapp.js b/bitba=
ke/lib/toaster/toastergui/static/js/projectapp.js<br>
index e674d8f..b347451 100644<br>
--- a/bitbake/lib/toaster/toastergui/static/js/projectapp.js<br>
+++ b/bitbake/lib/toaster/toastergui/static/js/projectapp.js<br>
@@ -92,6 +92,24 @@ projectApp.config(function($interpolateProvider) {<br>
=C2=A0 =C2=A0 =C2=A0$interpolateProvider.endSymbol(&quot;]}&quot;);<br>
=C2=A0});<br>
<br>
+<br>
+// add time interval to HH:mm filter<br>
+projectApp.filter(&#39;timediff&#39;, function() {<br>
+=C2=A0 =C2=A0 return function(input) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 function pad(j) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (parseInt(j) &lt; 10) {return=
 &quot;0&quot; + j}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return j;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 seconds =3D parseInt(input);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 minutes =3D Math.floor(seconds / 60);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 seconds =3D seconds - minutes * 60;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 hours =3D Math.floor(seconds / 3600);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 seconds =3D seconds - hours * 3600;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return pad(hours) + &quot;:&quot; + pad(minute=
s) + &quot;:&quot; + pad(seconds);<br>
+=C2=A0 =C2=A0 }<br>
+});<br>
+<br>
+<br>
=C2=A0// main controller for the project page<br>
=C2=A0projectApp.controller(&#39;prjCtrl&#39;, function($scope, $modal, $ht=
tp, $interval, $location, $cookies, $q, $sce) {<br>
<br>
@@ -150,7 +168,7 @@ projectApp.controller(&#39;prjCtrl&#39;, function($scop=
e, $modal, $http, $interval, $loc<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0// identify canceled builds here, so we can display them.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0_diffArrays(oldbuilds, $scope.builds,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 function (e,f) { return e.status =3D=3D f.status &amp;&amp; <a h=
ref=3D"http://e.id" target=3D"_blank">e.id</a> =3D=3D <a href=3D"http://f.i=
d" target=3D"_blank">f.id</a> }, // compare<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 function (e,f) { return <a href=3D"http://e.id" target=3D"_blank=
">e.id</a> =3D=3D <a href=3D"http://f.id" target=3D"_blank">f.id</a> },=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0// compare<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0undefined,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // added=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0function (e) {=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 // deleted<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (e.status =3D=3D &quot;deleted&quot;) ret=
urn;<br>
@@ -421,7 +439,7 @@ projectApp.controller(&#39;prjCtrl&#39;, function($scop=
e, $modal, $http, $interval, $loc<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}).then( function () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$scope.toggle(elementid);<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (data[&#39;projectVersio=
n&#39;] !=3D undefined) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 alertText +=3D &qu=
ot;&lt;b&gt;&quot; + $<a href=3D"http://scope.release.name" target=3D"_blan=
k">scope.release.name</a> + &quot;&lt;/b&gt;&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 alertText +=3D &qu=
ot;&lt;b&gt;&quot; + $<a href=3D"http://scope.project.release.name" target=
=3D"_blank">scope.project.release.name</a> + &quot;&lt;/b&gt;&quot;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$scope.displayAlert(alertZo=
ne, alertText, &quot;alert-info&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0});<br>
@@ -506,7 +524,7 @@ projectApp.controller(&#39;prjCtrl&#39;, function($scop=
e, $modal, $http, $interval, $loc<br>
=C2=A0 =C2=A0 =C2=A0// init code<br>
=C2=A0 =C2=A0 =C2=A0//<br>
=C2=A0 =C2=A0 =C2=A0$scope.init =3D function() {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $scope.pollHandle =3D $interval(function () { =
$scope._makeXHRCall({method: &quot;POST&quot;, url: $scope.urls.xhr_edit, d=
ata: undefined});}, 4000, 0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $scope.pollHandle =3D $interval(function () { =
$scope._makeXHRCall({method: &quot;GET&quot;, url: $scope.urls.xhr_edit, da=
ta: undefined});}, 4000, 0);<br>
=C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0$scope.init();<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/base.html b/bitbake/l=
ib/toaster/toastergui/templates/base.html<br>
index d414bfb..f377081 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/base.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/base.html<br>
@@ -1,6 +1,6 @@<br>
=C2=A0&lt;!DOCTYPE html&gt;<br>
=C2=A0{% load static %}<br>
-&lt;html&gt;<br>
+&lt;html lang=3D&quot;en&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;head&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;title&gt;{% if objectname %} {{object=
name|title}} - {% endif %}Toaster&lt;/title&gt;<br>
=C2=A0&lt;link rel=3D&quot;stylesheet&quot; href=3D&quot;{% static &#39;css=
/bootstrap.min.css&#39; %}&quot; type=3D&quot;text/css&quot;&gt;<br>
@@ -9,6 +9,7 @@<br>
=C2=A0&lt;link rel=3D&quot;stylesheet&quot; href=3D&quot;{% static &#39;css=
/prettify.css&#39; %}&quot; type=3D&#39;text/css&#39;&gt;<br>
=C2=A0&lt;link rel=3D&quot;stylesheet&quot; href=3D&quot;{% static &#39;css=
/default.css&#39; %}&quot; type=3D&#39;text/css&#39;&gt;<br>
=C2=A0&lt;meta name=3D&quot;viewport&quot; content=3D&quot;width=3Ddevice-w=
idth, initial-scale=3D1.0&quot; /&gt;<br>
+&lt;meta http-equiv=3D&quot;Content-Type&quot; content=3D&quot;text/html;c=
harset=3DUTF-8&quot;&gt;<br>
=C2=A0&lt;script src=3D&quot;{% static &#39;js/jquery-2.0.3.min.js&#39; %}&=
quot;&gt;<br>
=C2=A0&lt;/script&gt;<br>
=C2=A0&lt;script src=3D&quot;{% static &#39;js/jquery.cookie.js&#39; %}&quo=
t;&gt;<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html=
 b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html<br>
index 091e11a..d48ad92 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/basetable_bottom.html<br>
@@ -58,9 +58,12 @@<br>
=C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0// load cookie for number of entries to be displayed on=
 page<br>
-=C2=A0 =C2=A0 pagesize =3D $.cookie(&#39;count&#39;);<br>
-=C2=A0 =C2=A0 if (!pagesize)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 pagesize =3D 10;<br>
+=C2=A0 =C2=A0 if ({{request.GET.count}} !=3D &quot;&quot;) {<br>
+=C2=A0 =C2=A0 =C2=A0 pagesize =3D {{request.GET.count}};<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 pagesize =3D $.cookie(&#39;_count&#39;);<br>
+=C2=A0 =C2=A0 }<br>
+<br>
=C2=A0 =C2=A0 =C2=A0$(&#39;.pagesize option&#39;).prop(&#39;selected&#39;, =
false)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 .filter(&#39;[value=3D&quot;&#39; + pagesize + &#39;&quot=
;]&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 .attr(&#39;selected&#39;, true);<br>
@@ -81,9 +84,9 @@<br>
=C2=A0 =C2=A0 =C2=A0$(&#39;.progress, .lead span&#39;).tooltip({container:&=
#39;table&#39;, placement:&#39;top&#39;});<br>
<br>
=C2=A0 =C2=A0 =C2=A0$(&quot;.pagesize&quot;).change(function () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 reload_params({&quot;count&quot;:$(this).val()=
});<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0// save cookie with pagesize<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $.cookie(&quot;count&quot;, $(this).val(), { p=
ath : $(location).attr(&#39;pathname&#39;) });<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $.cookie(&quot;_count&quot;, $(this).val(), { =
path : $(location).attr(&#39;pathname&#39;) });<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 reload_params({&quot;count&quot;:$(this).val()=
});<br>
=C2=A0 =C2=A0 =C2=A0});<br>
=C2=A0});<br>
=C2=A0&lt;/script&gt;<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/layers.html b/bitbake=
/lib/toaster/toastergui/templates/layers.html<br>
index 51f4dd9..3dd2b1f 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/layers.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/layers.html<br>
@@ -9,14 +9,14 @@<br>
=C2=A0{% block projectinfomain %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=
=3D&quot;page-header&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;h1&gt;<br>
-=C2=A0 {% if request.GET.search and objects.paginator.count &gt; 0=C2=A0 %=
}<br>
+=C2=A0 {% if request.GET.filter and objects.paginator.count &gt;=C2=A0 0 o=
r request.GET.search and objects.paginator.count &gt;=C2=A0 0 %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0{{objects.paginator.count}} layer{{objects.pagin=
ator.count|pluralize}} found<br>
-=C2=A0 {%elif request.GET.search and objects.paginator.count =3D=3D 0%}<br=
>
-=C2=A0 =C2=A0 =C2=A0 No layer found<br>
+=C2=A0 {% elif request.GET.filter and objects.paginator.count =3D=3D=C2=A0=
 0 or request.GET.search and objects.paginator.count =3D=3D 0 %}<br>
+=C2=A0 =C2=A0 =C2=A0 No layers found<br>
=C2=A0 =C2=A0{%else%}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0All layers<br>
=C2=A0 =C2=A0{%endif%}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;i class=3D&quot;icon-question-sign get-help heading-help&quo=
t; title=3D&quot;This page lists all the layers compatible with &quot; + {{=
<a href=3D"http://project.release.name" target=3D"_blank">project.release.n=
ame</a>}} + &quot; that Toaster knows about.&quot;&gt;&lt;/i&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;i class=3D&quot;icon-question-sign get-help heading-help&quo=
t; title=3D&quot;This page lists all the layers compatible with {{<a href=
=3D"http://project.release.name" target=3D"_blank">project.release.name</a>=
}} that Toaster knows about.&quot;&gt;&lt;/i&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &lt;/h1&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<=
br>
<br>
@@ -25,51 +25,51 @@<br>
=C2=A0 =C2=A0&lt;/div&gt;<br>
<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div id=3D&quot=
;layer-added&quot; class=3D&quot;alert alert-info lead&quot; style=3D&quot;=
display:none;&quot;&gt;&lt;/div&gt;<br>
-<br>
-<br>
=C2=A0{% include &quot;basetable_top_layers.html&quot; %}<br>
-=C2=A0 =C2=A0 {% for lv in objects %}<br>
+=C2=A0 =C2=A0 {% for o in objects %}<br>
=C2=A0 =C2=A0 =C2=A0&lt;tr class=3D&quot;data&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;layer&quot;=
&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://lv.i=
d" target=3D"_blank">lv.id</a> %}&quot;&gt;{{<a href=3D"http://lv.layer.nam=
e" target=3D"_blank">lv.layer.name</a>}}&lt;/a&gt;&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;description=
&quot;&gt;{{lv.layer.summary}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;source&quot=
;&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://lv.=
pk" target=3D"_blank">lv.pk</a> %}&quot;&gt;{{<a href=3D"http://lv.layer_so=
urce.name" target=3D"_blank">lv.layer_source.name</a>}}&lt;/a&gt;&lt;/td&gt=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;git-repo&qu=
ot;&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://l=
v.pk" target=3D"_blank">lv.pk</a> %}&quot;&gt;&lt;code&gt;{{lv.layer.vcs_ur=
l}}&lt;/code&gt;&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if lv.get_vcs_link_url %}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a target=3D&quot;_blank&quot=
; href=3D&quot;{{ lv.get_vcs_link_url }}&quot;&gt;&lt;i class=3D&quot;icon-=
share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;layer&quot;=
&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://o.id=
" target=3D"_blank">o.id</a> %}&quot;&gt;{{<a href=3D"http://o.layer.name" =
target=3D"_blank">o.layer.name</a>}}&lt;/a&gt;&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;description=
&quot;&gt;{{o.layer.summary}}&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;source&quot=
;&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://o.p=
k" target=3D"_blank">o.pk</a> %}&quot;&gt;{{<a href=3D"http://o.layer_sourc=
e.name" target=3D"_blank">o.layer_source.name</a>}}&lt;/a&gt;&lt;/td&gt;<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;git-repo&qu=
ot;&gt;&lt;a href=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://o=
.pk" target=3D"_blank">o.pk</a> %}&quot;&gt;&lt;code&gt;{{o.layer.vcs_url}}=
&lt;/code&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if o.get_vcs_link_url %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a target=3D&quot;_blank&quot=
; href=3D&quot;{{ o.get_vcs_link_url }}&quot;&gt;&lt;i class=3D&quot;icon-s=
hare get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% endif %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;git-subdir&=
quot; style=3D&quot;display: table-cell;&quot;&gt;&lt;a href=3D&quot;{% url=
 &#39;layerdetails&#39; <a href=3D"http://lv.pk" target=3D"_blank">lv.pk</a=
> %}&quot;&gt;&lt;code&gt;{{lv.dirpath}}&lt;/code&gt;&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if lv.dirpath a=
nd lv.get_vcs_dirpath_link_url %}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a target=3D&quot;_blank&quot=
; href=3D&quot;{{ lv.get_vcs_dirpath_link_url }}&quot;&gt;&lt;i class=3D&qu=
ot;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;git-subdir&=
quot; style=3D&quot;display: table-cell;&quot;&gt;&lt;a href=3D&quot;{% url=
 &#39;layerdetails&#39; <a href=3D"http://o.pk" target=3D"_blank">o.pk</a> =
%}&quot;&gt;&lt;code&gt;{{o.dirpath}}&lt;/code&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if o.dirpath an=
d o.get_vcs_dirpath_link_url %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a target=3D&quot;_blank&quot=
; href=3D&quot;{{ o.get_vcs_dirpath_link_url }}&quot;&gt;&lt;i class=3D&quo=
t;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% endif %}<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;branch&quot=
;&gt;{% if lv.branch %}{{lv.branch}}{% else %}{{<a href=3D"http://lv.up_bra=
nch.name" target=3D"_blank">lv.up_branch.name</a>}}{% endif %}&lt;/td&gt;<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;branch&quot=
;&gt;{% if o.branch %}{{o.branch}}{% else %}{{<a href=3D"http://o.up_branch=
.name" target=3D"_blank">o.up_branch.name</a>}}{% endif %}&lt;/td&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;depend=
encies&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 {% with lvds=3Dlv.dependencies.all%}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if lvds.count %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {% with ods=3Do.dependencies.all%}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if ods.count %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;a class=3D&quot;btn&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 title=3D&quot;&lt;a href=3D&#39;{% url &quot;layerdetails&quot; =
<a href=3D"http://lv.pk" target=3D"_blank">lv.pk</a> %}&#39;&gt;{{<a href=
=3D"http://lv.layer.name" target=3D"_blank">lv.layer.name</a>}}&lt;/a&gt; d=
ependencies&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 title=3D&quot;&lt;a href=3D&#39;{% url &quot;layerdetails&quot; =
<a href=3D"http://o.pk" target=3D"_blank">o.pk</a> %}&#39;&gt;{{<a href=3D"=
http://o.layer.name" target=3D"_blank">o.layer.name</a>}}&lt;/a&gt; depende=
ncies&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0data-content=3D&quot;&lt;ul class=3D&#39;unstyled&#39;&gt;=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {% for i in lvds%}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 {% for i in ods%}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;li&gt;&lt;a href=3D&#39;{% url &quot;lay=
erdetails&quot; <a href=3D"http://i.depends_on.pk" target=3D"_blank">i.depe=
nds_on.pk</a> %}&#39;&gt;{{<a href=3D"http://i.depends_on.layer.name" targe=
t=3D"_blank">i.depends_on.layer.name</a>}}&lt;/a&gt;&lt;/li&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0{% endfor %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;/ul&gt;&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 {{lvds.count}}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 {{ods.count}}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;/a&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% endif %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% endwith %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;add-del-lay=
ers&quot; value=3D&quot;{{<a href=3D"http://lv.pk" target=3D"_blank">lv.pk<=
/a>}}&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button id=3D&q=
uot;layer-del-{{<a href=3D"http://lv.pk" target=3D"_blank">lv.pk</a>}}&quot=
; class=3D&quot;btn btn-danger btn-block remove-layer&quot; style=3D&quot;d=
isplay:none;&quot; onclick=3D&quot;layerDel({{<a href=3D"http://lv.pk" targ=
et=3D"_blank">lv.pk</a>}}, &#39;{{<a href=3D"http://lv.layer.name" target=
=3D"_blank">lv.layer.name</a>}}&#39;, &#39;{%url &#39;layerdetails&#39; <a =
href=3D"http://lv.pk" target=3D"_blank">lv.pk</a>%}&#39;)&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if project %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;add-del-lay=
ers&quot; value=3D&quot;{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a=
>}}&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div id=3D&quot=
;layer-tooltip-{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot;=
 style=3D&quot;display: none; font-size: 11px; line-height: 1.3;&quot; clas=
s=3D&quot;tooltip-inner&quot;&gt;layer was modified&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button id=3D&q=
uot;layer-del-{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot; =
class=3D&quot;btn btn-danger btn-block remove-layer layerbtn&quot; style=3D=
&quot;display:none;&quot; onclick=3D&quot;layerDel({{<a href=3D"http://o.pk=
" target=3D"_blank">o.pk</a>}}, &#39;{{<a href=3D"http://o.layer.name" targ=
et=3D"_blank">o.layer.name</a>}}&#39;, &#39;{%url &#39;layerdetails&#39; <a=
 href=3D"http://o.pk" target=3D"_blank">o.pk</a>%}&#39;)&quot; &gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;i class=3D&quot;icon-trash&quot;&gt;&lt;/i&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Delete layer<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/button&g=
t;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button id=3D&q=
uot;layer-add-{{<a href=3D"http://lv.pk" target=3D"_blank">lv.pk</a>}}&quot=
; class=3D&quot;btn btn-block&quot; style=3D&quot;display:none;&quot; oncli=
ck=3D&quot;layerAdd({{<a href=3D"http://lv.pk" target=3D"_blank">lv.pk</a>}=
}, &#39;{{<a href=3D"http://lv.layer.name" target=3D"_blank">lv.layer.name<=
/a>}}&#39;, &#39;{%url &#39;layerdetails&#39; <a href=3D"http://lv.pk" targ=
et=3D"_blank">lv.pk</a>%}&#39;)&quot; &gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button id=3D&q=
uot;layer-add-{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot; =
class=3D&quot;btn btn-block layerbtn&quot; style=3D&quot;display:none;&quot=
; onclick=3D&quot;layerAdd({{<a href=3D"http://o.pk" target=3D"_blank">o.pk=
</a>}}, &#39;{{<a href=3D"http://o.layer.name" target=3D"_blank">o.layer.na=
me</a>}}&#39;, &#39;{%url &#39;layerdetails&#39; <a href=3D"http://o.pk" ta=
rget=3D"_blank">o.pk</a>%}&#39;)&quot; title=3D&quot;layer added&quot;&gt;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;i class=3D&quot;icon-plus&quot;&gt;&lt;/i&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Add layer<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/button&g=
t;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% endif %}<br>
=C2=A0 =C2=A0 =C2=A0 &lt;/tr&gt;<br>
=C2=A0 =C2=A0 =C2=A0{% endfor %}<br>
=C2=A0{% include &quot;basetable_bottom.html&quot; %}<br>
@@ -95,8 +95,11 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/form&gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
<br>
+{% if project %}<br>
=C2=A0&lt;script&gt;<br>
<br>
+var updatetext;<br>
+<br>
=C2=A0function _makeXHREditCall(data, onsuccess, onfail) {<br>
=C2=A0 =C2=A0 =C2=A0$.ajax( {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type: &quot;POST&quot;,<br>
@@ -120,6 +123,7 @@ function _makeXHREditCall(data, onsuccess, onfail) {<br=
>
<br>
<br>
=C2=A0function layerDel(layerId, layerName, layerURL) {<br>
+=C2=A0 =C2=A0 updatetext =3D &quot;1 layer deleted&quot;;<br>
=C2=A0 =C2=A0 =C2=A0_makeXHREditCall({ &#39;layerDel&#39;: layerId }, funct=
ion () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0show_alert(&quot;&lt;strong&gt;1&lt;/stro=
ng&gt; layer deleted from &lt;a href=3D\&quot;{% url &#39;project&#39; <a h=
ref=3D"http://project.id" target=3D"_blank">project.id</a>%}\&quot;&gt;{{<a=
 href=3D"http://project.name" target=3D"_blank">project.name</a>}}&lt;/a&gt=
;: &lt;a href=3D\&quot;&quot;+layerURL+&quot;\&quot;&gt;&quot; + layerName =
+&quot;&lt;/a&gt;&quot;);<br>
=C2=A0 =C2=A0 =C2=A0});<br>
@@ -142,25 +146,35 @@ function show_dependencies_modal(layerId, layerName, =
layerURL, dependencies) {<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0$(&#39;#dependencies_list&#39;).html(deplistHtml);<br>
<br>
+=C2=A0 =C2=A0 var selected =3D [layerId];<br>
+=C2=A0 =C2=A0 var layer_link_list =3D &quot;&lt;a href=3D&#39;&quot;+layer=
URL+&quot;&#39;&gt;&quot;+layerName+&quot;&lt;/a&gt;&quot;;<br>
+<br>
=C2=A0 =C2=A0 =C2=A0$(&quot;#dependencies_modal_form&quot;).submit(function=
 (e) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0e.preventDefault();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 var selected =3D [layerId];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$(&quot;input[name=3D&#39;dependencies&#3=
9;]:checked&quot;).map(function () { selected.push(parseInt($(this).val()))=
});<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (selected.length &gt; 1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 updatetext =3D &quot;&quot; + se=
lected.length + &quot; layers added&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 updatetext =3D &quot;1 layer add=
ed&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 _makeXHREditCall({ &#39;layerAdd&#39;: selecte=
d.join(&quot;,&quot;) }, function () {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var layer_link_list =3D &quot;&l=
t;a href=3D&#39;&quot;+layerURL+&quot;&#39;&gt;&quot;+layerName+&quot;&lt;/=
a&gt;&quot;;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var i =3D 0; i &lt; selecte=
d.length; i++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var j =3D 0; =
j &lt; dependencies.length; i++) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
dependencies[j].id =3D=3D selected[i]) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 layer_link_list+=3D &quot;, &lt;a href=3D&#39;&quot;+dependencie=
s[j].layerdetailurl+&quot;&#39;&gt;&quot;+dependencies[j].name+&quot;&lt;/a=
&gt;&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var i =3D 0; i &lt; selected.length; i++)=
 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var j =3D 0; j &lt; depende=
ncies.length; j++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dependencies[j=
].id =3D=3D selected[i]) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 laye=
r_link_list+=3D &quot;, &lt;a href=3D&#39;&quot;+dependencies[j].layerdetai=
lurl+&quot;&#39;&gt;&quot;+dependencies[j].name+&quot;&lt;/a&gt;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brea=
k;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#dependencies_modal&#39;).modal(&#39;hi=
de&#39;);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#dependencies_modal&#39;)=
.modal(&#39;hide&#39;);<br>
+=C2=A0 =C2=A0 {% if project %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 _makeXHREditCall({ &#39;layerAdd&#39;: selecte=
d.join(&quot;,&quot;) }, function () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0show_alert(&quot;&lt;strong=
&gt;&quot;+selected.length+&quot;&lt;/strong&gt; layers added to &lt;a href=
=3D\&quot;{% url &#39;project&#39; <a href=3D"http://project.id" target=3D"=
_blank">project.id</a>%}\&quot;&gt;{{<a href=3D"http://project.name" target=
=3D"_blank">project.name</a>}}&lt;/a&gt;:&quot; + layer_link_list);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0});<br>
+=C2=A0 =C2=A0 {% endif %}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0});<br>
=C2=A0 =C2=A0 =C2=A0$(&#39;#dependencies_modal&#39;).modal(&#39;show&#39;);=
<br>
=C2=A0}<br>
@@ -178,6 +192,7 @@ function layerAdd(layerId, layerName, layerURL) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0show_dependencies_modal(layerId, layerName, layerURL, _dat=
a.list);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 updatetext =3D &quot;1 layer added&quot;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0_makeXHREditCall({ &#39;layerAdd&#39;: layerId }, function=
 () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0show_alert(&quot;&lt;strong&gt;1&lt;/stro=
ng&gt; layer added to &lt;a href=3D\&quot;{% url &#39;project&#39; <a href=
=3D"http://project.id" target=3D"_blank">project.id</a>%}\&quot;&gt;{{<a hr=
ef=3D"http://project.name" target=3D"_blank">project.name</a>}}&lt;/a&gt;: =
&lt;a href=3D\&quot;&quot;+layerURL+&quot;\&quot;&gt;&quot; + layerName +&q=
uot;&lt;/a&gt;&quot;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0});<br>
@@ -188,15 +203,31 @@ function layerAdd(layerId, layerName, layerURL) {<br>
=C2=A0}<br>
<br>
=C2=A0function button_set(id, state) {<br>
+=C2=A0 =C2=A0 var tohide, toshow;<br>
=C2=A0 =C2=A0 =C2=A0if (state =3D=3D &quot;add&quot;)<br>
=C2=A0 =C2=A0 =C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-add-&quot; + id).show();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-del-&quot; + id).hide();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 tohide =3D &quot;#layer-del-&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 toshow =3D &quot;#layer-add-&quot;;<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0 =C2=A0 =C2=A0else if (state =3D=3D &quot;del&quot;)<br>
=C2=A0 =C2=A0 =C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-add-&quot; + id).hide();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-del-&quot; + id).show();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 tohide =3D &quot;#layer-add-&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 toshow =3D &quot;#layer-del-&quot;;<br>
+=C2=A0 =C2=A0 }<br>
+<br>
+<br>
+=C2=A0 =C2=A0 var previouslyvisible =3D $(tohide + id).is(&quot;:visible&q=
uot;);<br>
+=C2=A0 =C2=A0 if (previouslyvisible) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(tohide + id).fadeOut( function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + =
id).text(updatetext);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + =
id).fadeIn().delay(2000).fadeOut(function(){<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(toshow + id).del=
ay(300).fadeIn();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(tohide + id).hide();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + id).hide();<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(toshow + id).show();<br>
=C2=A0 =C2=A0 =C2=A0}<br>
=C2=A0};<br>
<br>
@@ -214,9 +245,11 @@ function updateButtons(projectLayers) {<br>
=C2=A0}<br>
<br>
=C2=A0$(document).ready(function (){<br>
+=C2=A0 =C2=A0 $(&#39;.layerbtn&#39;).tooltip({ trigger: &#39;manual&#39; }=
);<br>
=C2=A0 =C2=A0 =C2=A0updateButtons({{projectlayerset}});<br>
=C2=A0});<br>
<br>
=C2=A0&lt;/script&gt;<br>
+{%endif%}<br>
<br>
=C2=A0{% endblock %}<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/mrb_section.html b/bi=
tbake/lib/toaster/toastergui/templates/mrb_section.html<br>
index 5ba0b08..586c47b 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/mrb_section.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/mrb_section.html<br>
@@ -44,7 +44,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Build time: &=
lt;a href=3D&quot;{% url &#39;buildtime&#39; <a href=3D"http://build.pk" ta=
rget=3D"_blank">build.pk</a> %}&quot;&gt;{{ build.timespent|sectohms }}&lt;=
/a&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/span&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% if build.project %}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a class=3D&quot;btn {=
%if build.outcome =3D=3D build.SUCCEEDED%}btn-success{%elif build.outcome =
=3D=3D build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right&quot; o=
nclick=3D&quot;scheduleBuild({{<a href=3D"http://build.project.name" target=
=3D"_blank">build.project.name</a>|json}}, {{build.get_sorted_target_list|m=
apselect:&#39;target&#39;|json}})&quot;&gt;Run again&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a class=3D&quot;btn {=
%if build.outcome =3D=3D build.SUCCEEDED%}btn-success{%elif build.outcome =
=3D=3D build.FAILED%}btn-danger{%else%}btn-info{%endif%} pull-right&quot; o=
nclick=3D&quot;scheduleBuild({% url &#39;xhr_projectbuild&#39; <a href=3D"h=
ttp://build.project.id" target=3D"_blank">build.project.id</a> as bpi%}{{bp=
i|json}}, {{<a href=3D"http://build.project.name" target=3D"_blank">build.p=
roject.name</a>|json}}, {{build.get_sorted_target_list|mapselect:&#39;targe=
t&#39;|json}})&quot;&gt;Run again&lt;/a&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{% endif %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0{%endif%}<br>
@@ -64,10 +64,10 @@<br>
<br>
=C2=A0&lt;script&gt;<br>
<br>
-function _makeXHRBuildCall(data, onsuccess, onfail) {<br>
+function _makeXHRBuildCall(url, data, onsuccess, onfail) {<br>
=C2=A0 =C2=A0 =C2=A0$.ajax( {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0type: &quot;POST&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 url: &quot;{% url &#39;xhr_projectbuild&#39; <=
a href=3D"http://project.id" target=3D"_blank">project.id</a> %}&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 url: url,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data: data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0headers: { &#39;X-CSRFToken&#39; : $.cook=
ie(&#39;csrftoken&#39;)},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0success: function (_data) {<br>
@@ -81,19 +81,18 @@ function _makeXHRBuildCall(data, onsuccess, onfail) {<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0alert(&quot;Call failed&quo=
t;);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0console.log(_data);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (onfail) onfail(data);<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-=C2=A0 =C2=A0 });<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 } });<br>
=C2=A0}<br>
<br>
<br>
-function scheduleBuild(projectName, buildlist) {<br>
+function scheduleBuild(url, projectName, buildlist) {<br>
=C2=A0 =C2=A0console.log(&quot;scheduleBuild&quot;);<br>
-//=C2=A0 _makeXHRBuildCall({targets: buildlist.join(&quot; &quot;)}, funct=
ion (_data) {<br>
+=C2=A0 _makeXHRBuildCall(url, {targets: buildlist.join(&quot; &quot;)}, fu=
nction (_data) {<br>
<br>
-=C2=A0 $(&#39;#latest-builds&#39;).prepend(&#39;&lt;div class=3D&quot;aler=
t alert-info&quot; style=3D&quot;padding-top:0px&quot;&gt;&#39; + &#39;&lt;=
span class=3D&quot;label label-info&quot; style=3D&quot;font-weight: normal=
; margin-bottom: 5px; margin-left:-15px; padding-top:5px;&quot;&gt;&#39;+pr=
ojectName+&#39;&lt;/span&gt;&lt;div class=3D&quot;row-fluid&quot;&gt;&#39; =
+<br>
+=C2=A0 =C2=A0 =C2=A0 $(&#39;#latest-builds&#39;).prepend(&#39;&lt;div clas=
s=3D&quot;alert alert-info&quot; style=3D&quot;padding-top:0px&quot;&gt;&#3=
9; + &#39;&lt;span class=3D&quot;label label-info&quot; style=3D&quot;font-=
weight: normal; margin-bottom: 5px; margin-left:-15px; padding-top:5px;&quo=
t;&gt;&#39;+projectName+&#39;&lt;/span&gt;&lt;div class=3D&quot;row-fluid&q=
uot;&gt;&#39; +<br>
=C2=A0 =C2=A0&#39;&lt;div class=3D&quot;span4 lead&quot;&gt;&#39; + buildli=
st.join(&quot; &quot;) +<br>
=C2=A0 =C2=A0&#39;&lt;/div&gt;&lt;div class=3D&quot;span4 lead pull-right&q=
uot;&gt;Build queued. Your build will start shortly.&lt;/div&gt;&lt;/div&gt=
;&lt;/div&gt;&#39;);<br>
-//=C2=A0 }<br>
+=C2=A0 });<br>
=C2=A0}<br>
<br>
=C2=A0&lt;/script&gt;<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/project.html b/bitbak=
e/lib/toaster/toastergui/templates/project.html<br>
index 9399b31..6a81283 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/project.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/project.html<br>
@@ -76,6 +76,14 @@ vim: expandtab tabstop=3D2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0&lt;/script&gt;<br>
<br>
+=C2=A0 &lt;script type=3D&quot;text/ng-template&quot; id=3D&quot;target_di=
splay&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 &lt;div ng-switch on=3D&quot;t.task.length&quot;&gt;<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div ng-switch-when=3D&quot;0&quot;&gt;{[t.=
target]}&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div ng-switch-default&gt;{[t.target]}:{[t.=
task]}&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 &lt;/div&gt;<br>
+=C2=A0 &lt;/script&gt;<br>
+<br>
+<br>
=C2=A0 =C2=A0&lt;!-- build form --&gt;<br>
=C2=A0 =C2=A0&lt;div class=3D&quot;well&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;form class=3D&quot;build-form&quot; ng-submit=3D&qu=
ot;targetNamedBuild()&quot;&gt;<br>
@@ -99,11 +107,11 @@ vim: expandtab tabstop=3D2<br>
<br>
=C2=A0 =C2=A0&lt;h2 class=3D&quot;air&quot; ng-if=3D&quot;builds.length&quo=
t;&gt;Latest builds&lt;/h2&gt;<br>
<br>
-=C2=A0 &lt;div class=3D&quot;alert&quot; ng-repeat=3D&quot;b in builds&quo=
t; ng-class=3D&quot;{&#39;queued&#39;:&#39;alert-info&#39;, &#39;deleted&#3=
9;:&#39;alert-info&#39;, &#39;in progress&#39;: &#39;alert-info&#39;, &#39;=
In Progress&#39;:&#39;alert-info&#39;, &#39;Succeeded&#39;:&#39;alert-succe=
ss&#39;, &#39;failed&#39;:&#39;alert-error&#39;, &#39;Failed&#39;:&#39;aler=
t-error&#39;}[b.status]&quot;&gt;<br>
+=C2=A0 &lt;div class=3D&quot;alert&quot; ng-repeat=3D&quot;b in builds&quo=
t; ng-class=3D&quot;{&#39;queued&#39;:&#39;alert-info&#39;, &#39;deleted&#3=
9;:&#39;alert-info&#39;, &#39;in progress&#39;: &#39;alert-info&#39;, &#39;=
failed&#39;:&#39;alert-error&#39;, &#39;completed&#39;:{&#39;In Progress&#3=
9;:&#39;alert-info&#39;, &#39;Succeeded&#39;:&#39;alert-success&#39;, &#39;=
Failed&#39;:&#39;alert-error&#39;}[b.build[0].status]}[b.status]&quot;=C2=
=A0 &gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;row-fluid&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;switch ng-switch=3D&quot;b.status&quo=
t;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;case ng-switch-when=3D&quot;fa=
iled&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot;&gt;{[t.target]} =
&lt;/span&gt;=C2=A0 =C2=A0&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot; ng-include src=
=3D&quot;&#39;target_display&#39;&quot;&gt;&lt;/span&gt;=C2=A0 =C2=A0&lt;/d=
iv&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;row-f=
luid&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quo=
t;air well&quot; ng-repeat=3D&quot;e in b.errors&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{[e.type]}: &=
lt;pre&gt;{[e.msg]}&lt;/pre&gt;<br>
@@ -111,53 +119,51 @@ vim: expandtab tabstop=3D2<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;case ng-switch-when=3D&quot;qu=
eued&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span5=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot;&gt;{[t.target]} =
&lt;/span&gt;=C2=A0 =C2=A0&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span5=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot; ng-include src=
=3D&quot;&#39;target_display&#39;&quot;&gt;&lt;/span&gt;=C2=A0 =C2=A0&lt;/d=
iv&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;span4=
 lead&quot; &gt;Build queued<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;i title=3D&quot;=
This build will start as soon as a build server is available&quot; class=3D=
&quot;icon-question-sign get-help get-help-blue heading-help&quot; data-tog=
gle=3D&quot;tooltip&quot;&gt;&lt;/i&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;button class=3D&quot;bt=
n pull-right btn-info&quot; ng-click=3D&quot;buildCancel(<a href=3D"http://=
b.id" target=3D"_blank">b.id</a>)&quot;&gt;Cancel&lt;/button&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;case ng-switch-when=3D&quot;cr=
eated&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot;&gt;{[t.target]} =
&lt;/span&gt;=C2=A0 =C2=A0&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot; ng-include src=
=3D&quot;&#39;target_display&#39;&quot;&gt;&lt;/span&gt;=C2=A0 =C2=A0&lt;/d=
iv&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;span6=
&quot; &gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;span class=3D&qu=
ot;lead&quot;&gt;Creating build&lt;/span&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;button class=3D&quot;bt=
n pull-right btn-info&quot; ng-click=3D&quot;buildCancel(<a href=3D"http://=
b.id" target=3D"_blank">b.id</a>)&quot;&gt;Cancel&lt;/button&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;case ng-switch-when=3D&quot;de=
leted&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot;&gt;{[t.target]} =
&lt;/span&gt;=C2=A0 =C2=A0&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot; ng-include src=
=3D&quot;&#39;target_display&#39;&quot;&gt;&lt;/span&gt;=C2=A0 =C2=A0&lt;/d=
iv&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;span6=
&quot; id=3D&quot;{[<a href=3D"http://b.id" target=3D"_blank">b.id</a>]}-de=
leted&quot; &gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;span class=3D&qu=
ot;lead&quot;&gt;Build deleted&lt;/span&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;button class=3D&quot;bt=
n pull-right btn-info&quot; ng-click=3D&quot;builds.splice(builds.indexOf(b=
), 1)&quot;&gt;Close&lt;/button&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;case ng-switch-when=3D&quot;in=
 progress&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot;&gt;{[t.target]} =
&lt;/span&gt;=C2=A0 =C2=A0&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;span4&quot=
; &gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead pull-=
right&quot;&gt;Build starting shortly&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/case&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;case ng-switch-when=3D&quot;In Prog=
ress&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt; &lt;span ng-repeat=3D&quot;t in b.targets&quot; ng-include src=
=3D&quot;&#39;target_display&#39;&quot;&gt;&lt;/span&gt;=C2=A0 =C2=A0&lt;/d=
iv&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;span4=
&quot; &gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&q=
uot;progress&quot; style=3D&quot;margin-top:5px;&quot; data-toggle=3D&quot;=
tooltip&quot; tooltip=3D&quot;{[b.completeper]}% of tasks complete&quot;&gt=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
div style=3D&quot;width: {[b.completeper]}%;&quot; class=3D&quot;bar&quot;&=
gt;&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&q=
uot;progress&quot; style=3D&quot;margin-top:5px;&quot; data-toggle=3D&quot;=
tooltip&quot; tooltip=3D&quot;{[b.build[0].completeper]}% of tasks complete=
&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
div style=3D&quot;width: {[b.build[0].completeper]}%;&quot; class=3D&quot;b=
ar&quot;&gt;&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead pull-=
right&quot;&gt;ETA: at {[b.eta]}&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead pull-=
right&quot;&gt;ETA: at {[b.build[0].eta|date:&quot;shortDate&quot;]}&lt;/di=
v&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;case ng-switch-default=3D&quot;&quo=
t;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt;&lt;a href=3D&quot;{[b.build_page_url]}&quot;&gt;&lt;span ng-repe=
at=3D&quot;t in b.targets&quot;&gt;{[t.target]} &lt;/span&gt;=C2=A0 =C2=A0&=
lt;/div&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;case ng-switch-when=3D&quot;complet=
ed&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;lead span3=
&quot;&gt;&lt;a href=3D&quot;{[b.build[0].build_page_url]}&quot;&gt;&lt;spa=
n ng-repeat=3D&quot;t in b.targets&quot; ng-include src=3D&quot;&#39;target=
_display&#39;&quot;&gt;&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;span2=
 lead&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{[b.completed_on|date:&#39=
;dd/MM/yy HH:mm&#39;]}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{[b.build[0].completed_on|=
date:&#39;dd/MM/yy HH:mm&#39;]}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;span2&quot=
;&gt;&lt;span&gt;{[b.errors.len]}&lt;/span&gt;&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;span2&quot=
;&gt;&lt;span&gt;{[b.warnings.len]}&lt;/span&gt;&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div&gt; &lt;span class=3D&qu=
ot;lead&quot;&gt;Build time: {[b.build_time|date:&quot;HH:mm&quot;]}&lt;/sp=
an&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=
=3D&quot;btn pull-right&quot; ng-class=3D&quot;{&#39;Succeeded&#39;:=C2=A0 =
&#39;btn-success&#39;, &#39;Failed&#39;: &#39;btn-danger&#39;}[b.status]&qu=
ot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;span2&quot=
;&gt;&lt;span&gt;&lt;a href=3D&quot;{[b.build[0].build_page_url]}#errors&qu=
ot; class=3D&quot;lead error&quot; ng-if=3D&quot;b.build[0].errors&quot;&gt=
;{[b.build[0].errors]}&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;span2&quot=
;&gt;&lt;span&gt;&lt;a href=3D&quot;{[b.build[0].build_page_url]}#warnings&=
quot; class=3D&quot;lead warning&quot; ng-if=3D&quot;b.build[0].warnings&qu=
ot;&gt;{[b.build[0].warnings]}&lt;/a&gt;&lt;/span&gt;&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div&gt; &lt;span class=3D&qu=
ot;lead&quot;&gt;Build time: {[b.build[0].build_time|timediff]}&lt;/span&gt=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=
=3D&quot;btn pull-right&quot; ng-class=3D&quot;{&#39;Succeeded&#39;:=C2=A0 =
&#39;btn-success&#39;, &#39;Failed&#39;: &#39;btn-danger&#39;}[b.build[0].s=
tatus]&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ng-click=3D&quot;targetExistingBuild(b.targets)&quot;&gt;Run again&lt;/b=
utton&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/case&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;case ng-switch-default=3D&quot;&quo=
t;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div&gt;FIXME!&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/case&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/switch&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;lead pull-right&quot;&gt;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
diff --git a/bitbake/lib/toaster/toastergui/templates/targets.html b/bitbak=
e/lib/toaster/toastergui/templates/targets.html<br>
index 3afdf0a..042d0fc 100644<br>
--- a/bitbake/lib/toaster/toastergui/templates/targets.html<br>
+++ b/bitbake/lib/toaster/toastergui/templates/targets.html<br>
@@ -9,55 +9,74 @@<br>
=C2=A0{% block projectinfomain %}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=
=3D&quot;page-header&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;h1&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 All targets<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;i class=3D&quot;icon-question-sign get-help heading-help&quo=
t; title=3D&quot;This page lists all the targets compatible with Yocto Proj=
ect 1.7 &#39;Dxxxx&#39; that Toaster knows about. They include community-cr=
eated targets suitable for use on top of OpenEmbedded Core and any targets =
you have imported&quot;&gt;&lt;/i&gt;<br>
+=C2=A0 {% if request.GET.filter and objects.paginator.count &gt;=C2=A0 0 o=
r request.GET.search and objects.paginator.count &gt;=C2=A0 0 %}<br>
+=C2=A0 =C2=A0 =C2=A0 {{objects.paginator.count}} target{{objects.paginator=
.count|pluralize}} found<br>
+=C2=A0 {% elif request.GET.filter and objects.paginator.count =3D=3D=C2=A0=
 0 or request.GET.search and objects.paginator.count =3D=3D 0 %}<br>
+=C2=A0 =C2=A0 =C2=A0 No targets found<br>
+=C2=A0 {%else%}<br>
+=C2=A0 =C2=A0 =C2=A0 All targets<br>
+=C2=A0 {%endif%}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;i class=3D&quot;icon-question-sign get-help heading-help&quo=
t; title=3D&quot;This page lists all the targets compatible with &quot; + {=
{<a href=3D"http://project.release.name" target=3D"_blank">project.release.=
name</a>}} + &quot; that Toaster knows about.&quot;&gt;&lt;/i&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 &lt;/h1&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;!--div class=
=3D&quot;alert&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
div class=3D&quot;input-append&quot; style=3D&quot;margin-bottom:0px;&quot;=
&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;input class=3D&quot;input-xxlarge&quot; type=3D&quot;text&qu=
ot; placeholder=3D&quot;Search targets&quot; value=3D&quot;browser&quot; /&=
gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;a class=3D&quot;add-on btn&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &lt;i class=3D&quot;icon-remove&quot;&gt;&lt;/i&gt=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;button class=3D&quot;btn&quot; type=3D&quot;button&quot;&gt;=
Search&lt;/button&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;a class=3D&quot;btn btn-link&quot; href=3D&quot;#&quot;&gt;S=
how all targets&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/div--&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div id=3D&quot=
;target-added&quot; class=3D&quot;alert alert-info lead&quot; style=3D&quot=
;display:none;&quot;&gt;&lt;/div&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div id=3D&quot=
;target-removed&quot; class=3D&quot;alert alert-info lead&quot; style=3D&qu=
ot;display:none;&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
button type=3D&quot;button&quot; class=3D&quot;close&quot; data-dismiss=3D&=
quot;alert&quot;&gt;&amp;times;&lt;/button&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
strong&gt;1&lt;/strong&gt; target deleted from &lt;a href=3D&quot;project-w=
ith-targets.html&quot;&gt;your project&lt;/a&gt;: &lt;a href=3D&quot;#&quot=
;&gt;meta-aarch64&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/div&gt;<br>
<br>
+=C2=A0 &lt;div id=3D&quot;zone1alerts&quot;&gt;<br>
+<br>
+=C2=A0 &lt;/div&gt;<br>
+<br>
+{% if objects.paginator.count =3D=3D 0 %}<br>
+=C2=A0 &lt;div class=3D&quot;row-fluid&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 &lt;div class=3D&quot;alert&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;form class=3D&quot;no-results input-append=
&quot; id=3D&quot;searchform&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;input id=3D&quot;search&quot=
; name=3D&quot;search&quot; class=3D&quot;input-xxlarge&quot; type=3D&quot;=
text&quot; value=3D&quot;{{request.GET.search}}&quot;/&gt;{% if request.GET=
.search %}&lt;a href=3D&quot;javascript:$(&#39;#search&#39;).val(&#39;&#39;=
);searchform.submit()&quot; class=3D&quot;add-on btn&quot; tabindex=3D&quot=
;-1&quot;&gt;&lt;i class=3D&quot;icon-remove&quot;&gt;&lt;/i&gt;&lt;/a&gt;{=
% endif %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=3D&quot;btn&quo=
t; type=3D&quot;submit&quot; value=3D&quot;Search&quot;&gt;Search&lt;/butto=
n&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=3D&quot;btn btn=
-link&quot; onclick=3D&quot;javascript:$(&#39;#search&#39;).val(&#39;&#39;)=
;searchform.submit()&quot;&gt;Show all targets&lt;/button&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/form&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 &lt;/div&gt;<br>
+=C2=A0 &lt;/div&gt;<br>
+<br>
+{% else %}<br>
<br>
=C2=A0{% include &quot;basetable_top.html&quot; %}<br>
=C2=A0 =C2=A0 =C2=A0{% for o in objects %}<br>
=C2=A0 =C2=A0 =C2=A0&lt;tr class=3D&quot;data&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;target&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{{<a href=3D"http:/=
/o.name" target=3D"_blank">o.name</a>}} ({{<a href=3D"http://o.id" target=
=3D"_blank">o.id</a>}}, {{o.up_id}})<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;a target=3D&quo=
t;_blank&quot; href=3D&quot;{{o.get_layersource_view_url}}&quot;&gt;&lt;i c=
lass=3D&quot;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;version&quot;&gt;{{o.versi=
on}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;description&quot;&gt;{{o.d=
escription}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;recipe-file&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;code&gt;{{o.fil=
e_path}}&lt;/code&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;a href=3D&quot;=
{{o.get_vcs_link_url}}&quot; target=3D&quot;_blank&quot;&gt;&lt;i class=3D&=
quot;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;target-section&quot;&gt;{{=
o.section}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;license&quot;&gt;{{o.licen=
se}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;layer&quot;&gt;&lt;a href=
=3D&quot;#&quot;&gt;{{<a href=3D"http://o.layer_version.layer.name" target=
=3D"_blank">o.layer_version.layer.name</a>}}&lt;/a&gt;&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;source&quot;&gt;{{<a href=
=3D"http://o.layer_source.name" target=3D"_blank">o.layer_source.name</a>}}=
&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;branch&quot;&gt;{{o.layer_=
version.commit}}&lt;/td&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td class=3D&quot;build&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;a id=3D&quot;bu=
ild-target&quot; href=3D&quot;project-with-targets.html?target=3D3g-router-=
image&quot; class=3D&quot;btn btn-block&quot; style=3D&quot;display:none;&q=
uot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Build target<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;a id=3D&quot;ad=
d-layer&quot; href=3D&quot;#&quot; class=3D&quot;btn btn-block nopop&quot; =
title=3D&quot;1 layer added&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&lt;i class=3D&quot;icon-plus&quot;&gt;&lt;/i&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Add layer<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&lt;i class=3D&quot;icon-question-sign get-help&quot; title=3D&qu=
ot;To build this target, you must first add the meta-embeddedgeeks layer to=
 your project&quot;&gt;&lt;/i&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/a&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;target&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {{<a href=3D"http:=
//o.name" target=3D"_blank">o.name</a>}}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a target=3D&qu=
ot;_blank&quot; href=3D&quot;{{o.get_layersource_view_url}}&quot;&gt;&lt;i =
class=3D&quot;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;version&quot;&gt;{{o.vers=
ion}}&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;description&quot;&gt;{% i=
f o.description %}{{o.description}}{% else %}{{o.summary}}{%endif%}&lt;/td&=
gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;recipe-file&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;code&gt;{{o.fi=
le_path}}&lt;/code&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a href=3D&quot=
;{{o.get_vcs_link_url}}{{o.file_path}}&quot; target=3D&quot;_blank&quot;&gt=
;&lt;i class=3D&quot;icon-share get-info&quot;&gt;&lt;/i&gt;&lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;target-section&quot;&gt;{=
{o.section}}&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;license&quot;&gt;{{o.lice=
nse}}&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;layer&quot;&gt;&lt;a href=
=3D&quot;{% url &#39;layerdetails&#39; <a href=3D"http://o.layer_version.id=
" target=3D"_blank">o.layer_version.id</a>%}&quot;&gt;{{<a href=3D"http://o=
.layer_version.layer.name" target=3D"_blank">o.layer_version.layer.name</a>=
}}&lt;/a&gt;&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;source&quot;&gt;{{<a href=
=3D"http://o.layer_source.name" target=3D"_blank">o.layer_source.name</a>}}=
&lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;branch&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {% if o.layer_version.up_branch %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {{<a href=3D"http://o.layer_vers=
ion.up_branch.name" target=3D"_blank">o.layer_version.up_branch.name</a>}}<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 {% else %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a class=3D&quot;btn&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data-content=3D&qu=
ot;&lt;ul class=3D&#39;unstyled&#39;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;li&gt;{=
{o.layer_version.commit}}&lt;/li&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/ul&gt;&quot;&=
gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {{o.layer_version.=
commit|truncatechars:13}}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 {% endif %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/td&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;td class=3D&quot;add-layer&quot; value=3D&=
quot;{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot; layervers=
ion_id=3D&quot;{{<a href=3D"http://o.layer_version.pk" target=3D"_blank">o.=
layer_version.pk</a>}}&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;div id=3D&quot;layer-tooltip=
-{{<a href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot; style=3D&quot=
;display: none; font-size: 11px; line-height: 1.3;&quot; class=3D&quot;tool=
tip-inner&quot;&gt;layer was modified&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a href=3D&quot;{% url &#39;p=
roject&#39; <a href=3D"http://project.id" target=3D"_blank">project.id</a> =
%}#/targetbuild=3D{{<a href=3D"http://o.name" target=3D"_blank">o.name</a>}=
}&quot; id=3D&quot;target-build-{{<a href=3D"http://o.pk" target=3D"_blank"=
>o.pk</a>}}&quot; class=3D&quot;btn btn-block remove-layer&quot; style=3D&q=
uot;display:none;&quot; &gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Build target<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;a id=3D&quot;layer-add-{{<a =
href=3D"http://o.pk" target=3D"_blank">o.pk</a>}}&quot; class=3D&quot;btn b=
tn-block&quot; style=3D&quot;display:none;&quot; href=3D&quot;javascript:la=
yerAdd({{<a href=3D"http://o.layer_version.pk" target=3D"_blank">o.layer_ve=
rsion.pk</a>}}, &#39;{{<a href=3D"http://o.layer_version.layer.name" target=
=3D"_blank">o.layer_version.layer.name</a>}}&#39;, &#39;{%url &#39;layerdet=
ails&#39; <a href=3D"http://o.layer_version.pk" target=3D"_blank">o.layer_v=
ersion.pk</a>%}&#39;)&quot; &gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;i class=3D&quo=
t;icon-plus&quot;&gt;&lt;/i&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Add layer<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;i title=3D&quo=
t;&quot; class=3D&quot;icon-question-sign get-help&quot; data-original-titl=
e=3D&quot;To build this target, you must first add the {{<a href=3D"http://=
o.layer_version.layer.name" target=3D"_blank">o.layer_version.layer.name</a=
>}} layer to your project&quot;&gt;&lt;/i&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/a&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/td&gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;/tr&gt;<br>
=C2=A0 =C2=A0 =C2=A0{% endfor %}<br>
=C2=A0{% include &quot;basetable_bottom.html&quot; %}<br>
@@ -65,122 +84,174 @@<br>
=C2=A0 =C2=A0 =C2=A0&lt;!-- Modals --&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0&lt;!-- &#39;Layer dependencies modal&#39; --&gt;<br>
-=C2=A0 =C2=A0 &lt;div id=3D&quot;dependencies-message&quot; class=3D&quot;=
modal hide fade&quot; tabindex=3D&quot;-1&quot; role=3D&quot;dialog&quot; a=
ria-hidden=3D&quot;true&quot;&gt;<br>
+=C2=A0 =C2=A0 &lt;div id=3D&quot;dependencies_modal&quot; class=3D&quot;mo=
dal hide fade&quot; tabindex=3D&quot;-1&quot; role=3D&quot;dialog&quot; ari=
a-hidden=3D&quot;true&quot;&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;form id=3D&quot;dependencies_modal_form&qu=
ot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;modal-header&quot;&=
gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;button type=3D&quot;but=
ton&quot; class=3D&quot;close&quot; data-dismiss=3D&quot;modal&quot; aria-h=
idden=3D&quot;true&quot;&gt;x&lt;/button&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;h3&gt;meta-acer dependencies=
&lt;/h3&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;h3&gt;&lt;span class=3D&quot=
;layer-name&quot;&gt;&lt;/span&gt; dependencies&lt;/h3&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;modal-body&quot;&gt=
;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;p&gt;&lt;strong&gt;meta-acer=
&lt;/strong&gt; depends on some targets that are not added to your project.=
 Select the ones you want to add:&lt;/p&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;ul class=3D&quot;unstyled&qu=
ot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;li&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
label class=3D&quot;checkbox&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;input type=3D&quot;checkbox&quot; checked=3D&quot;checked&qu=
ot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 meta-android<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
/label&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/li&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;li&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
label class=3D&quot;checkbox&quot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;input type=3D&quot;checkbox&quot; checked=3D&quot;checked&qu=
ot;&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 meta-oe<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;=
/label&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/li&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;p&gt;&lt;strong class=3D&quo=
t;layer-name&quot;&gt;&lt;/strong&gt; depends on some layers that are not a=
dded to your project. Select the ones you want to add:&lt;/p&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;ul class=3D&quot;unstyled&qu=
ot; id=3D&quot;dependencies_list&quot;&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/ul&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;div class=3D&quot;modal-footer&quot;&=
gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button id=3D&quot;add-target=
-dependencies&quot; type=3D&quot;submit&quot; class=3D&quot;btn btn-primary=
&quot; data-dismiss=3D&quot;modal&quot; &gt;Add targets&lt;/button&gt;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=3D&quot;btn&quo=
t; data-dismiss=3D&quot;modal&quot;&gt;Cancel&lt;/button&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=3D&quot;btn btn=
-primary&quot; type=3D&quot;submit&quot;&gt;Add layers&lt;/button&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;button class=3D&quot;btn&quo=
t; type=3D&quot;reset&quot; data-dismiss=3D&quot;modal&quot;&gt;Cancel&lt;/=
button&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;/form&gt;<br>
=C2=A0 =C2=A0 =C2=A0&lt;/div&gt;<br>
<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/jquery-1.9.1.min.js&quot; t=
ype=3D&#39;text/javascript&#39;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/jquery.tablesorter.min.js&q=
uot; type=3D&#39;text/javascript&#39;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/jquery-ui-1.10.3.custom.min=
.js&quot;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/bootstrap.min.js&quot; type=
=3D&#39;text/javascript&#39;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/prettify.js&quot; type=3D&#=
39;text/javascript&#39;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/jit.js&quot; type=3D&#39;te=
xt/javascript&#39;&gt;&lt;/script&gt;<br>
-=C2=A0 =C2=A0 &lt;script src=3D&quot;assets/js/main.js&quot; type=3D&#39;t=
ext/javascript&#39;&gt;&lt;/script&gt;<br>
-<br>
-=C2=A0 =C2=A0 &lt;script&gt;<br>
-=C2=A0 =C2=A0 =C2=A0$(document).ready(function() {<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 //show or hide selected columns on load<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;input:checkbox&quot;).each(function(){=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var selectedType =3D $(this).val=
();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if($(this).is(&quot;:checked&quo=
t;)){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;.&quot;+se=
lectedType).show();<br>
+{% endif %}<br>
+<br>
+{% if project %}<br>
+&lt;script&gt;<br>
+<br>
+var updatetext;<br>
+<br>
+function _makeXHREditCall(data, onsuccess, onfail) {<br>
+=C2=A0 =C2=A0 $.ajax( {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 type: &quot;POST&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 url: &quot;{% url &#39;xhr_projectedit&#39; <a=
 href=3D"http://project.id" target=3D"_blank">project.id</a> %}&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data: data,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 headers: { &#39;X-CSRFToken&#39; : $.cookie(&#=
39;csrftoken&#39;)},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 success: function (_data) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (_data.error !=3D &quot;ok&qu=
ot;) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 alert(_data.error)=
;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 updateButtons(_dat=
a.layers.map(function (e) {return <a href=3D"http://e.id" target=3D"_blank"=
>e.id</a>}));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (onsuccess !=3D=
 undefined) onsuccess(_data);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;.&quot;+se=
lectedType).hide();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 error: function (_data) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 alert(&quot;Call failed&quot;);<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 console.log(_data);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 });<br>
+}<br>
+<br>
+function show_alert(text, cls) {<br>
+=C2=A0 =C2=A0 $(&quot;#zone1alerts&quot;).html(&quot;&lt;div class=3D\&quo=
t;alert alert-info lead\&quot;&gt;&lt;button type=3D\&quot;button\&quot; cl=
ass=3D\&quot;close\&quot; data-dismiss=3D\&quot;alert\&quot;&gt;&amp;times;=
&lt;/button&gt;&quot; + text + &quot;&lt;/div&gt;&quot;);<br>
+}<br>
+<br>
+<br>
+function show_dependencies_modal(layerId, layerName, layerURL, dependencie=
s) {<br>
+=C2=A0 =C2=A0 // update layer name<br>
+=C2=A0 =C2=A0 $(&#39;.layer-name&#39;).text(layerName);<br>
+=C2=A0 =C2=A0 var deplistHtml =3D &quot;&quot;;<br>
+=C2=A0 =C2=A0 for (var i =3D 0; i &lt; dependencies.length; i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 deplistHtml +=3D &quot;&lt;li&gt;&lt;label cla=
ss=3D\&quot;checkbox\&quot;&gt;&lt;input name=3D\&quot;dependencies\&quot; =
value=3D\&quot;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 deplistHtml +=3D dependencies[i].id;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 deplistHtml +=3D&quot;\&quot; type=3D\&quot;ch=
eckbox\&quot; checked=3D\&quot;checked\&quot;/&gt;&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 deplistHtml +=3D dependencies[i].name;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 deplistHtml +=3D &quot;&lt;/label&gt;&lt;/li&g=
t;&quot;;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 $(&#39;#dependencies_list&#39;).html(deplistHtml);<br>
+<br>
+=C2=A0 =C2=A0 var selected =3D [layerId];<br>
+=C2=A0 =C2=A0 var layer_link_list =3D undefined;<br>
+<br>
+=C2=A0 =C2=A0 $(&quot;#dependencies_modal_form&quot;).submit(function (e) =
{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 e.preventDefault();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;input[name=3D&#39;dependencies&#39;]:c=
hecked&quot;).map(function () { selected.push(parseInt($(this).val()))});<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 layer_link_list =3D &quot;&lt;a href=3D&#39;&q=
uot;+layerURL+&quot;&#39;&gt;&quot;+layerName+&quot;&lt;/a&gt;&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (selected.length &gt; 1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 updatetext =3D &quot;&quot; + se=
lected.length + &quot; layers added&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 updatetext =3D &quot;1 layer add=
ed&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var i =3D 0; i &lt; selected.length; i++)=
 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (var j =3D 0; j &lt; depende=
ncies.length; j++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dependencies[j=
].id =3D=3D selected[i]) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 laye=
r_link_list+=3D &quot;, &lt;a href=3D&#39;&quot;+dependencies[j].layerdetai=
lurl+&quot;&#39;&gt;&quot;+dependencies[j].name+&quot;&lt;/a&gt;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 brea=
k;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#dependencies_modal&#39;).modal(&#39;hi=
de&#39;);<br>
+<br>
+=C2=A0 =C2=A0 {% if project %}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 _makeXHREditCall({ &#39;layerAdd&#39;: selecte=
d.join(&quot;,&quot;) }, function onXHRSuccess() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 show_alert(&quot;&lt;strong&gt;&=
quot;+selected.length+&quot;&lt;/strong&gt; layer(s) added to &lt;a href=3D=
\&quot;{% url &#39;project&#39; <a href=3D"http://project.id" target=3D"_bl=
ank">project.id</a>%}\&quot;&gt;{{<a href=3D"http://project.name" target=3D=
"_blank">project.name</a>}}&lt;/a&gt;:&quot; + layer_link_list);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0});<br>
+=C2=A0 =C2=A0 {% endif %}<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 // enable add target button<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#add-target-with-deps&#39;).removeAttr(=
&#39;disabled&#39;);<br>
+=C2=A0 =C2=A0 });<br>
+=C2=A0 =C2=A0 $(&#39;#dependencies_modal&#39;).modal(&#39;show&#39;);<br>
+}<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 //edit columns functionality (show / hide tabl=
e columns)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;input:checkbox&quot;).change();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;input:checkbox&quot;).ch=
ange(function(){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 var selectedType =
=3D $(this).val();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if($=
(this).is(&quot;:checked&quot;)){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $(&quot;.&quot;+selectedType).show();<br>
+<br>
+function layerAdd(layerId, layerName, layerURL) {<br>
+=C2=A0 =C2=A0 $.ajax({<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 url: &#39;{% url &quot;xhr_datatypeahead&quot;=
 %}&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 data: {&#39;type&#39;: &#39;layerdeps&#39;,&#3=
9;value&#39;:layerId},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 success: function(_data) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (_data.error !=
=3D &quot;ok&quot;) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 aler=
t(_data.error);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
_data.list.length &gt; 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 show_dependencies_modal(layerId, layerName, layerURL, _data.list=
);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $(&quot;.&quot;+selectedType).hide();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else=
 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 updatetext =3D &quot;1 layer added&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 _makeXHREditCall({ &#39;layerAdd&#39;: layerId }, function () {<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 show_alert(&quot;&lt;strong&gt;1&lt;/strong&gt=
; layer added to &lt;a href=3D\&quot;{% url &#39;project&#39; <a href=3D"ht=
tp://project.id" target=3D"_blank">project.id</a>%}\&quot;&gt;{{<a href=3D"=
http://project.name" target=3D"_blank">project.name</a>}}&lt;/a&gt;: &lt;a =
href=3D\&quot;&quot;+layerURL+&quot;\&quot;&gt;&quot; + layerName +&quot;&l=
t;/a&gt;&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 });<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 //turn edit columns dropdown into a multi-sele=
ct menu<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;.dropdown-menu input, .dropdown-menu la=
bel&#39;).click(function(e) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 e.stopPropagation();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 //show tooltip with applied filter<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#filtered&#39;).tooltip({container:&#39=
;table&#39;, placement:&#39;bottom&#39;, delay:{hide:1500}, html:true});<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 })<br>
+}<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#filtered&#39;).click(function() {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(this).tooltip(&#39;hide&#39;);=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
+function button_set(id, state) {<br>
+=C2=A0 =C2=A0 var tohide, toshow;<br>
+=C2=A0 =C2=A0 if (state =3D=3D &quot;add&quot;)<br>
+=C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 toshow =3D &quot;#layer-add-&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 tohide =3D &quot;#target-build-&quot;;<br>
+=C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 else if (state =3D=3D &quot;build&quot;)<br>
+=C2=A0 =C2=A0 {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 tohide =3D &quot;#layer-add-&quot;;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 toshow =3D &quot;#target-build-&quot;;<br>
+=C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 //show target added tooltip<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#remove-target, #add-target, #add-targ=
et-with-deps2&quot;).tooltip({ trigger: &#39;manual&#39; });<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 // add target without dependencies<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#add-target&quot;).click(function(){<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-removed&#39;).hid=
e();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-added&#39;).html(=
&#39;&lt;button type=3D&quot;button&quot; class=3D&quot;close&quot; data-di=
smiss=3D&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;strong&gt;1&lt;/=
strong&gt; target added to &lt;a href=3D&quot;project-with-targets.html&quo=
t;&gt;your project&lt;/a&gt;: &lt;a href=3D&quot;#&quot;&gt;meta-aarch64&lt=
;/a&gt;&#39;).fadeIn();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#add-target&#39;).tooltip=
(&#39;show&#39;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#add-target&quot;).hide(=
);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;.add-targets .tooltip&qu=
ot;).delay(2000).fadeOut(function(){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#remove-ta=
rget&quot;).delay(300).fadeIn();<br>
+=C2=A0 =C2=A0 var previouslyvisible =3D $(tohide + id).is(&quot;:visible&q=
uot;);<br>
+=C2=A0 =C2=A0 if (previouslyvisible) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(tohide + id).fadeOut( function() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + =
id).text(updatetext);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + =
id).fadeIn().delay(2000).fadeOut(function(){<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(toshow + id).del=
ay(300).fadeIn();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0});<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0});<br>
+=C2=A0 =C2=A0 } else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(tohide + id).hide();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#layer-tooltip-&quot; + id).hide();<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(toshow + id).show();<br>
+=C2=A0 =C2=A0 }<br>
+};<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 // add target with dependencies<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(document).on(&quot;click&quot;, &quot;#add-t=
arget-dependencies&quot;, function() {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-removed&#39;).hid=
e();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-added&#39;).html(=
&#39;&lt;button type=3D&quot;button&quot; class=3D&quot;close&quot; data-di=
smiss=3D&quot;alert&quot;&gt;&amp;times;&lt;/button&gt;&lt;strong&gt;3&lt;/=
strong&gt; targets added to &lt;a href=3D&quot;project-with-targets.html&qu=
ot;&gt;your project&lt;/a&gt;: &lt;a href=3D&quot;#&quot;&gt;meta-acer&lt;/=
a&gt; and its dependencies &lt;a href=3D&quot;#&quot;&gt;meta-android&lt;/a=
&gt; and &lt;a href=3D&quot;#&quot;&gt;meta-oe&lt;/a&gt;&#39;).delay(400).f=
adeIn(function(){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#add-target=
-with-deps&#39;).tooltip(&#39;show&#39;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#add-targe=
t-with-deps, #add-target-with-deps&quot;).hide();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;.add-targe=
ts .tooltip&quot;).delay(2000).fadeOut(function(){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&q=
uot;#remove-target-with-deps&quot;).delay(300).fadeIn();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 // delete target<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#remove-target&quot;).click(function()=
{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-added&#39;).hide(=
);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#target-removed&#39;).sho=
w();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&#39;#remove-target&#39;).tool=
tip(&#39;show&#39;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#remove-target&quot;).hi=
de();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;.add-targets .tooltip&qu=
ot;).delay(2000).fadeOut(function(){<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $(&quot;#add-targe=
t&quot;).delay(300).fadeIn();<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 });<br>
+function updateButtons(projectLayers) {<br>
+=C2=A0 =C2=A0 var displayedLayers =3D [];<br>
+=C2=A0 =C2=A0 $(&quot;.add-layer&quot;).map(function () { displayedLayers.=
push( { &quot;l&quot;: parseInt($(this).attr(&#39;layerversion_id&#39;)), &=
quot;i&quot;: parseInt($(this).attr(&#39;value&#39;))})});<br>
+=C2=A0 =C2=A0 for (var i=3D0; i &lt; displayedLayers.length; i++) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (projectLayers.indexOf(displayedLayers[i].l=
) &gt; -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 button_set(displayedLayers[i].i,=
 &quot;build&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 button_set(displayedLayers[i].i,=
 &quot;add&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+=C2=A0 =C2=A0 }<br>
+}<br>
<br>
-=C2=A0 =C2=A0 =C2=A0});<br>
+$(document).ready(function (){<br>
+=C2=A0 =C2=A0 updateButtons({{projectlayerset}});<br>
+});<br>
<br>
=C2=A0&lt;/script&gt;<br>
+{%endif%}<br>
<br>
=C2=A0{% endblock %}<br>
diff --git a/bitbake/lib/toaster/toastergui/views.py b/bitbake/lib/toaster/=
toastergui/views.py<br>
index e568ee7..b47eba2 100755<br>
--- a/bitbake/lib/toaster/toastergui/views.py<br>
+++ b/bitbake/lib/toaster/toastergui/views.py<br>
@@ -123,7 +123,7 @@ def _redirect_parameters(view, g, mandatory_parameters,=
 *args, **kwargs):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0params[i] =3D g[i]<br>
=C2=A0 =C2=A0 =C2=A0for i in mandatory_parameters:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not i in params:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 params[i] =3D mandatory_paramete=
rs[i]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 params[i] =3D urllib.unquote(str=
(mandatory_parameters[i]))<br>
<br>
=C2=A0 =C2=A0 =C2=A0return redirect(url + &quot;?%s&quot; % urllib.urlencod=
e(params), *args, **kwargs)<br>
<br>
@@ -202,6 +202,7 @@ def _get_search_results(search_term, queryset, model):<=
br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0search_objects.append(reduce(operator.or_=
, q_map))<br>
=C2=A0 =C2=A0 =C2=A0search_object =3D reduce(operator.and_, search_objects)=
<br>
+=C2=A0 =C2=A0 print &quot;search objects&quot;, search_object<br>
=C2=A0 =C2=A0 =C2=A0queryset =3D queryset.filter(search_object)<br>
<br>
=C2=A0 =C2=A0 =C2=A0return queryset<br>
@@ -1914,8 +1915,7 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0login(request, user)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0#=C2=A0 save =
the project<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D Project.ob=
jects.create_project(name =3D request.POST[&#39;projectname&#39;],<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rele=
ase =3D Release.objects.get(pk =3D request.POST[&#39;projectversion&#39;]))=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D Project.ob=
jects.create_project(name =3D request.POST[&#39;projectname&#39;], release =
=3D Release.objects.get(pk =3D request.POST[&#39;projectversion&#39;]))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prj.user_id =
=3D <a href=3D"http://request.user.pk" target=3D"_blank">request.user.pk</a=
><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prj.save()<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return redire=
ct(reverse(project, args =3D (<a href=3D"http://prj.pk" target=3D"_blank">p=
rj.pk</a>,)) + &quot;#/newproject&quot;)<br>
@@ -1933,36 +1933,21 @@ if toastermain.settings.MANAGED:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0def _project_recent_build_list(prj):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # build requests not yet started<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 return (map(lambda x: {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;id&quot;:=C2=
=A0 <a href=3D"http://x.pk" target=3D"_blank">x.pk</a>,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;targets&quot=
; : map(lambda y: {&quot;target&quot;: y.target }, x.brtarget_set.all()),<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;=
: x.get_state_display(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, prj.buildrequest_set.filter(s=
tate__lt =3D BuildRequest.REQ_INPROGRESS).order_by(&quot;-pk&quot;)) +<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # build requests started, but with no build ye=
t<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 map(lambda x: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 return map(lambda x: {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;id&quot=
;:=C2=A0 <a href=3D"http://x.pk" target=3D"_blank">x.pk</a>,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;targets&quot=
; : map(lambda y: {&quot;target&quot;: y.target }, x.brtarget_set.all()),<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;=
: x.get_state_display(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, prj.buildrequest_set.filter(s=
tate =3D BuildRequest.REQ_INPROGRESS, build =3D None).order_by(&quot;-pk&qu=
ot;)) +<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # build requests that failed<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 map(lambda x: {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;id&quot;:=C2=
=A0 <a href=3D"http://x.pk" target=3D"_blank">x.pk</a>,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;targets&quot=
; : map(lambda y: {&quot;target&quot;: y.target }, x.brtarget_set.all()),<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;targets&quot=
; : map(lambda y: {&quot;target&quot;: y.target, &quot;task&quot;: y.task }=
, x.brtarget_set.all()),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;status&=
quot;: x.get_state_display(),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;errors&=
quot;: map(lambda y: {&quot;type&quot;: y.errtype, &quot;msg&quot;: y.errms=
g, &quot;tb&quot;: y.traceback}, x.brerror_set.all()),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, prj.buildrequest_set.filter(s=
tate =3D BuildRequest.REQ_FAILED).order_by(&quot;-pk&quot;)) +<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # and already made builds<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 map(lambda x: {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;id&quot;: <a=
 href=3D"http://x.pk" target=3D"_blank">x.pk</a>,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;targets&quot=
;: map(lambda y: {&quot;target&quot;: y.target }, x.target_set.all()),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;=
: x.get_outcome_display(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;completed_on=
&quot; : x.completed_on.strftime(&#39;%s&#39;)+&quot;000&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;build_time&q=
uot; : (x.completed_on - x.started_on).total_seconds(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;build_page_u=
rl&quot; : reverse(&#39;builddashboard&#39;, args=3D(<a href=3D"http://x.pk=
" target=3D"_blank">x.pk</a>,)),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;completeper&=
quot;: x.completeper(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;eta&quot;: x=
.eta().ctime(),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, prj.build_set.all()))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;build&quot; =
: map( lambda y: {&quot;id&quot;: <a href=3D"http://y.pk" target=3D"_blank"=
>y.pk</a>,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;status&quot;: y.get_outcome_display(),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;completed_on&quot; : y.completed_on.strftime=
(&#39;%s&#39;)+&quot;000&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;build_time&quot; : (y.completed_on - y.start=
ed_on).total_seconds(),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;build_page_url&quot; : reverse(&#39;builddas=
hboard&#39;, args=3D(<a href=3D"http://y.pk" target=3D"_blank">y.pk</a>,)),=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;errors&quot;: y.errors_no,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;warnings&quot;: y.warnings_no,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;completeper&quot;: y.completeper(),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 &quot;eta&quot;: y.eta().ctime()}, Build.objects.f=
ilter(buildrequest =3D x)),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, prj.buildrequest_set.order_by=
(&quot;-pk&quot;)[:5])<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0# Shows the edit project page<br>
@@ -2025,10 +2010,14 @@ if toastermain.settings.MANAGED:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;buildCancel&#39; in=
 request.POST:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for i in requ=
est.POST[&#39;buildCancel&#39;].strip().split(&quot; &quot;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 br =
=3D BuildRequest.objects.select_for_update().get(project =3D prj, pk =3D i,=
 state__lte =3D BuildRequest.REQ_QUEUED)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prin=
t &quot;selected for delete&quot;, <a href=3D"http://br.pk" target=3D"_blan=
k">br.pk</a><br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 br.d=
elete()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prin=
t &quot;selected for delete&quot;, <a href=3D"http://br.pk" target=3D"_blan=
k">br.pk</a><br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 br =3D BuildRequest.objects.select_for_update().get(project =3D =
prj, pk =3D i, state__lte =3D BuildRequest.REQ_QUEUED)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 print &quot;selected for delete&quot;, <a href=3D"http://br.pk" =
target=3D"_blank">br.pk</a><br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 br.delete()<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 print &quot;selected for delete&quot;, <a href=3D"http://br.pk" =
target=3D"_blank">br.pk</a><br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exce=
pt BuildRequest.DoesNotExist:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pass<br>
+<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;targets&#39; in req=
uest.POST:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ProjectTarget=
.objects.filter(project =3D prj).delete()<br>
@@ -2059,7 +2048,7 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# remove layers<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;layerDel&#39; in re=
quest.POST:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for t in requ=
est.POST[&#39;layerDel&#39;].strip().split(&quot; &quot;):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pt =
=3D ProjectLayer.objects.get(project =3D prj, layercommit_id =3D int(t)).de=
lete()<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pt =
=3D ProjectLayer.objects.filter(project =3D prj, layercommit_id =3D int(t))=
.delete()<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;projectName&#39; in=
 request.POST:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"ht=
tp://prj.name" target=3D"_blank">prj.name</a> =3D request.POST[&#39;project=
Name&#39;]<br>
@@ -2071,8 +2060,8 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prj.save()<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# we need to =
change the layers<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for i in prj.=
projectlayer_set.all():<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # fi=
nd and add a similarly-named layer from the same layer source on the new br=
anch<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv =
=3D Layer_Version.objects.filter(layer_source =3D i.layercommit.layer_sourc=
e, layer__name =3D <a href=3D"http://i.layercommit.layer.name" target=3D"_b=
lank">i.layercommit.layer.name</a>, up_branch__in =3D Branch.objects.filter=
(name =3D prj.release.branch))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # fi=
nd and add a similarly-named layer on the new branch<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv =
=3D Layer_Version.objects.filter(layer__name =3D <a href=3D"http://i.layerc=
ommit.layer.name" target=3D"_blank">i.layercommit.layer.name</a>, up_branch=
__release =3D prj.release)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0if lv.count() =3D=3D 1:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0ProjectLayer.objects.get_or_create(project =3D prj, layerc=
ommit =3D lv[0])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0# get rid of the old entry<br>
@@ -2095,17 +2084,19 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0@csrf_exempt<br>
=C2=A0 =C2=A0 =C2=A0def xhr_datatypeahead(request):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0try:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # returns layers for current pro=
ject release that are not in the project set<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if request.GET[&#39;type&#3=
9;] =3D=3D &quot;layers&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =
=3D Layer_Version.objects.all()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;proje=
ct_id&#39; in request.session:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0prj =3D Project.objects.get(pk =3D request.session[&#39;project_id&#39;]=
)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 quer=
yset_all =3D queryset_all.filter(up_branch__in =3D Branch.objects.filter(na=
me =3D <a href=3D"http://prj.release.name" target=3D"_blank">prj.release.na=
me</a>)).exclude(pk__in =3D map(lambda x: x.layercommit_id, prj.projectlaye=
r_set.all()))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 quer=
yset_all =3D queryset_all.filter(up_branch__release =3D prj.release).exclud=
e(pk__in =3D map(lambda x: x.layercommit_id, prj.projectlayer_set.all()))<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =
=3D queryset_all.filter(layer__name__icontains=3Drequest.GET.get(&#39;value=
&#39;,&#39;&#39;))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return HttpRe=
sponse(json.dumps( { &quot;error&quot;:&quot;ok&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;list&quot; : map( lambda x: {&quot;id&quot;: <a href=3D"http://x.p=
k" target=3D"_blank">x.pk</a>, &quot;name&quot;: <a href=3D"http://x.layer.=
name" target=3D"_blank">x.layer.name</a>, &quot;detail&quot;: &quot;(&quot;=
 + <a href=3D"http://x.layer.layer_source.name" target=3D"_blank">x.layer.l=
ayer_source.name</a> + (&quot;)&quot; if x.up_branch =3D=3D None else &quot=
; | &quot;+<a href=3D"http://x.up_branch.name" target=3D"_blank">x.up_branc=
h.name</a>+&quot;)&quot;)},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all[:8])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}), content_type =3D &quot;application/json&quot;)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # returns layer dependencies for=
 a layer, excluding current project layers<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if request.GET[&#39;type&#3=
9;] =3D=3D &quot;layerdeps&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =
=3D LayerVersionDependency.objects.filter(layer_version_id =3D request.GET[=
&#39;value&#39;])<br>
<br>
@@ -2122,6 +2113,7 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0map(lambda x: x.depends_on, queryset_all))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}), content_type =3D &quot;application/json&quot;)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # returns layer versions that wo=
uld be deleted on the new release__pk<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if request.GET[&#39;type&#3=
9;] =3D=3D &quot;versionlayers&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not &#39;p=
roject_id&#39; in request.session:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0raise Exception(&quot;This call cannot makes no sense outside a project =
context&quot;)<br>
@@ -2129,8 +2121,8 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D []=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prj =3D Proje=
ct.objects.get(pk =3D request.session[&#39;project_id&#39;])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for i in prj.=
projectlayer_set.all():<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv =
=3D Layer_Version.objects.filter(layer_source =3D i.layercommit.layer_sourc=
e, layer__name =3D <a href=3D"http://i.layercommit.layer.name" target=3D"_b=
lank">i.layercommit.layer.name</a>, up_branch__in =3D Branch.objects.filter=
(name =3D Release.objects.get(pk=3Drequest.GET[&#39;value&#39;]).branch))<b=
r>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if l=
v.count() !=3D 1:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lv =
=3D Layer_Version.objects.filter(layer__name =3D <a href=3D"http://i.layerc=
ommit.layer.name" target=3D"_blank">i.layercommit.layer.name</a>, up_branch=
__release__pk=3Drequest.GET[&#39;value&#39;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if l=
v.count() !=3D 1:=C2=A0 =C2=A0 =C2=A0# there is no layer_version with the n=
ew release id, and the same name<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0retval.append(i)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return HttpRe=
sponse(json.dumps( {&quot;error&quot;:&quot;ok&quot;,<br>
@@ -2138,14 +2130,14 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0lambda x: {&quot;id&quot;: <a href=3D"http://x.layercommit=
.pk" target=3D"_blank">x.layercommit.pk</a>, &quot;name&quot;: <a href=3D"h=
ttp://x.layercommit.layer.name" target=3D"_blank">x.layercommit.layer.name<=
/a>, &quot;detail&quot;: &quot;(&quot; + <a href=3D"http://x.layercommit.la=
yer.layer_source.name" target=3D"_blank">x.layercommit.layer.layer_source.n=
ame</a> + (&quot;)&quot; if x.layercommit.up_branch =3D=3D None else &quot;=
 | &quot;+<a href=3D"http://x.layercommit.up_branch.name" target=3D"_blank"=
>x.layercommit.up_branch.name</a>+&quot;)&quot;)},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0retval) }), content_type =3D &quot;application/json&quot;)=
<br>
<br>
-<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # returns targets provided by cu=
rrent project layers<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if request.GET[&#39;type&#3=
9;] =3D=3D &quot;targets&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =
=3D Recipe.objects.all()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if &#39;proje=
ct_id&#39; in request.session:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0queryset_all =3D queryset_all.filter(layer_version__layer__in =3D map(la=
mbda x: x.layercommit.layer, ProjectLayer.objects.filter(project_id=3Dreque=
st.session[&#39;project_id&#39;])))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return HttpRe=
sponse(json.dumps({ &quot;error&quot;:&quot;ok&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;list&quot; : map ( lambda x: {&quot;id&quot;: <a href=3D"http://x.=
pk" target=3D"_blank">x.pk</a>, &quot;name&quot;: <a href=3D"http://x.name"=
 target=3D"_blank">x.name</a>, &quot;detail&quot;:&quot;[&quot; + <a href=
=3D"http://x.layer_version.layer.name" target=3D"_blank">x.layer_version.la=
yer.name</a>+ (&quot; | &quot; + <a href=3D"http://x.layer_version.up_branc=
h.name" target=3D"_blank">x.layer_version.up_branch.name</a> + &quot;]&quot=
; if x.layer_version.up_branch is not None else &quot;]&quot;)},<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 queryset_all.filter(name__istartswith=3Drequest.GET.get(&#39;val=
ue&#39;,&#39;&#39;))[:8]),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 queryset_all.filter(name__icontains=3Drequest.GET.get(&#39;value=
&#39;,&#39;&#39;))[:8]),<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}), content_type =3D &quot;application/json&quot;)<br>
<br>
@@ -2155,7 +2147,7 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0queryset_all =3D queryset_all.filter(layer_version__layer__in =3D map(la=
mbda x: x.layercommit.layer, ProjectLayer.objects.filter(project_id=3Dreque=
st.session[&#39;project_id&#39;])))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return HttpRe=
sponse(json.dumps({ &quot;error&quot;:&quot;ok&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;list&quot; : map ( lambda x: {&quot;id&quot;: <a href=3D"http://x.=
pk" target=3D"_blank">x.pk</a>, &quot;name&quot;: <a href=3D"http://x.name"=
 target=3D"_blank">x.name</a>, &quot;detail&quot;:&quot;[&quot; + <a href=
=3D"http://x.layer_version.layer.name" target=3D"_blank">x.layer_version.la=
yer.name</a>+ (&quot; | &quot; + <a href=3D"http://x.layer_version.up_branc=
h.name" target=3D"_blank">x.layer_version.up_branch.name</a> + &quot;]&quot=
; if x.layer_version.up_branch is not None else &quot;]&quot;)},<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 queryset_all.filter(name__istartswith=3Drequest.GET.get(&#39;val=
ue&#39;,&#39;&#39;))[:8]),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 queryset_all.filter(name__icontains=3Drequest.GET.get(&#39;value=
&#39;,&#39;&#39;))[:8]),<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}), content_type =3D &quot;application/json&quot;)<br>
<br>
@@ -2173,11 +2165,15 @@ if toastermain.settings.MANAGED:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0def layers(request):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not &#39;project_id&#39; in request.session=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Exception(&quot;invalid pa=
ge: cannot show page without a project&quot;)<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0template =3D &quot;layers.html&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# define here what parameters the view ne=
eds in the GET portion in order to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# be able to display something.=C2=A0 &#3=
9;count&#39; and &#39;page&#39; are mandatory for all views<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# that use paginators.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 mandatory_parameters =3D { &#39;count&#39;: 10=
,=C2=A0 &#39;page&#39; : 1, &#39;orderby&#39; : &#39;layer__name:+&#39; };<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 (pagesize, orderby) =3D _get_parameters_values=
(request, 100, &#39;layer__name:+&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 mandatory_parameters =3D { &#39;count&#39;: pa=
gesize,=C2=A0 &#39;page&#39; : 1, &#39;orderby&#39; : orderby };<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D _verify_parameters( request.GE=
T, mandatory_parameters )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if retval:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _redirect_parameters=
( &#39;layers&#39;, request.GET, mandatory_parameters)<br>
@@ -2187,18 +2183,9 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(filter_string, search_term, ordering_str=
ing) =3D _search_tuple(request, Layer_Version)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =3D Layer_Version.objects.al=
l()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # mock an empty Project if we are outside proj=
ect context<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 class _mockProject(object):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 id =3D -1<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 class _mockManager(object):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 def all(self):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 retu=
rn []<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 projectlayer_set =3D _mockManage=
r()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D _mockProject()<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;project_id&#39; in request.session:<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D Project.objects.get(pk =
=3D request.session[&#39;project_id&#39;])<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.fi=
lter(up_branch__in =3D Branch.objects.filter(name =3D <a href=3D"http://prj=
.release.name" target=3D"_blank">prj.release.name</a>))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D Project.objects.get(pk =3D request.ses=
sion[&#39;project_id&#39;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.filter(up_branch=
__release =3D prj.release)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_with_search =3D _get_queryset(La=
yer_Version, queryset_all, None, search_term, ordering_string, &#39;-layer_=
_name&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset =3D _get_queryset(Layer_Version,=
 queryset_all, filter_string, search_term, ordering_string, &#39;-layer__na=
me&#39;)<br>
@@ -2265,7 +2252,6 @@ if toastermain.settings.MANAGED:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
@@ -2279,31 +2265,30 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return render(request, template, context)=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0def targets(request):<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 template =3D &quot;targets.html&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # define here what parameters the view needs i=
n the GET portion in order to<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # be able to display something.=C2=A0 &#39;cou=
nt&#39; and &#39;page&#39; are mandatory for all views<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # that use paginators.<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 mandatory_parameters =3D { &#39;count&#39;: 10=
,=C2=A0 &#39;page&#39; : 1, &#39;orderby&#39; : &#39;name:+&#39; };<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if not &#39;project_id&#39; in request.session=
:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Exception(&quot;invalid pa=
ge: cannot show page without a project&quot;)<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 template =3D &#39;targets.html&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 (pagesize, orderby) =3D _get_parameters_values=
(request, 100, &#39;name:+&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 mandatory_parameters =3D { &#39;count&#39;: pa=
gesize,=C2=A0 &#39;page&#39; : 1, &#39;orderby&#39; : orderby }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D _verify_parameters( request.GE=
T, mandatory_parameters )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if retval:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return _redirect_parameters=
( &#39;targets&#39;, request.GET, mandatory_parameters)<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # boilerplate code that takes a request for an=
 object type and returns a queryset<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 # for that object type. copypasta for all need=
ed table searches<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(filter_string, search_term, ordering_str=
ing) =3D _search_tuple(request, Recipe)<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =3D Recipe.objects.all()<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;project_id&#39; in request.session:<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.fi=
lter(Q(layer_version__up_branch__in =3D Branch.objects.filter(name =3D Proj=
ect.objects.get(pk=3Drequest.session[&#39;project_id&#39;]).<a href=3D"http=
://release.name" target=3D"_blank">release.name</a>)) | Q(layer_version__bu=
ild__in =3D Project.objects.get(pk =3D request.session[&#39;project_id&#39;=
]).build_set.all()))<br>
+<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 prj =3D Project.objects.get(pk =3D request.ses=
sion[&#39;project_id&#39;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.filter(Q(layer_v=
ersion__up_branch__release =3D prj.release) | Q(layer_version__build__in =
=3D prj.build_set.all()))<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_with_search =3D _get_queryset(Re=
cipe, queryset_all, None, search_term, ordering_string, &#39;-name&#39;)<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset =3D _get_queryset(Recipe, queryset_al=
l, filter_string, search_term, ordering_string, &#39;-name&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# retrieve the objects that will be displ=
ayed in the table; targets a paginator and gets a page range to display<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 target_info =3D _build_page_range(Paginator(qu=
eryset, request.GET.get(&#39;count&#39;, 10)),request.GET.get(&#39;page&#39=
;, 1))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 target_info =3D _build_page_range(Paginator(qu=
eryset_with_search, request.GET.get(&#39;count&#39;, 10)),request.GET.get(&=
#39;page&#39;, 1))<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0context =3D {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;projectlayerset&#39; : json=
.dumps(map(lambda x: <a href=3D"http://x.layercommit.id" target=3D"_blank">=
x.layercommit.id</a>, prj.projectlayer_set.all())),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;objects&#39; : target_=
info,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;objectname&#39; : &quo=
t;targets&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;default_orderby&#39; :=
 &#39;name:+&#39;,<br>
@@ -2329,13 +2314,19 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;Section&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;clclass&#39;: &#39;target-section&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;hidden&#39;: 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;orderfield&#39;: _get_toggle_order(request, &quot;section&quot;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;ordericon&#39;: _get_toggle_order_icon(request, &quot;section&quot;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;License&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;clclass&#39;: &#39;license&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;hidden&#39;: 1,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;orderfield&#39;: _get_toggle_order(request, &quot;license&quot;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;ordericon&#39;: _get_toggle_order_icon(request, &quot;license&quot;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;Layer&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;clclass&#39;: &#39;layer&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;orderfield&#39;: _get_toggle_order(request, &quot;layer_version__layer__na=
me&quot;),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;ordericon&#39;: _get_toggle_order_icon(request, &quot;layer_version__layer=
__name&quot;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;Layer source&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;clclass&#39;: &#39;source&#39;,<br>
@@ -2345,20 +2336,32 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;filter&#39;: {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&#39;class&#39;: &#39;target&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&#39;label&#39;: &#39;Show:&#39;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;options&#39;: map(lambda x: (<a href=3D"http://x.name" targ=
et=3D"_blank">x.name</a>, &#39;layer_source__pk:&#39; + str(<a href=3D"http=
://x.id" target=3D"_blank">x.id</a>), queryset_with_search.filter(layer_sou=
rce__pk =3D <a href=3D"http://x.id" target=3D"_blank">x.id</a>).count() ), =
LayerSource.objects.all()),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;options&#39;: map(lambda x: (&quot;Targets provided by &quo=
t; + <a href=3D"http://x.name" target=3D"_blank">x.name</a> + &quot; layers=
&quot;, &#39;layer_source__pk:&#39; + str(<a href=3D"http://x.id" target=3D=
"_blank">x.id</a>), queryset_with_search.filter(layer_source__pk =3D <a hre=
f=3D"http://x.id" target=3D"_blank">x.id</a>).count() ), LayerSource.object=
s.all()),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;Branch, tag or commit&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;clclass&#39;: &#39;branch&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;hidden&#39;: 1,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;project_id&#39; in request.session:<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 context[&#39;tablecols&#39;] +=
=3D [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{=C2=A0 =C2=
=A0&#39;name&#39;: &#39;Build&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;dclass&#39;: &#39;span2&#39;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&#39;qhelp&#39;: &quot;Add or delete targets to / from your project &quo=
t;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39=
;filter&#39;: {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;class&#39;: &#39;add-layer&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;label&#39;: &#39;Show:&#39;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;options&#39;: [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (&#39;Targets provided by=
 layers added to this project&#39;, &quot;layer_version__projectlayer__proj=
ect:&quot; + str(<a href=3D"http://prj.id" target=3D"_blank">prj.id</a>), q=
ueryset_with_search.filter(layer_version__projectlayer__project =3D <a href=
=3D"http://prj.id" target=3D"_blank">prj.id</a>).count()),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (&#39;Targets provided by=
 layers not added to this project&#39;, &quot;layer_version__projectlayer__=
project:NOT&quot; + str(<a href=3D"http://prj.id" target=3D"_blank">prj.id<=
/a>), queryset_with_search.exclude(layer_version__projectlayer__project =3D=
 <a href=3D"http://prj.id" target=3D"_blank">prj.id</a>).count()),<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0]<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }, ]<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return render(request, template, context)=
<br>
<br>
@@ -2378,7 +2381,7 @@ if toastermain.settings.MANAGED:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_all =3D Machine.objects.all()<br=
>
=C2=A0#=C2=A0 =C2=A0 =C2=A0 =C2=A0 if &#39;project_id&#39; in request.sessi=
on:<br>
-#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.f=
ilter(Q(layer_version__up_branch__in =3D Branch.objects.filter(name =3D Pro=
ject.objects.get(request.session[&#39;project_id&#39;]).<a href=3D"http://r=
elease.name" target=3D"_blank">release.name</a>)) | Q(layer_version__build_=
_in =3D Project.objects.get(request.session[&#39;project_id&#39;]).build_se=
t.all()))<br>
+#=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_all =3D queryset_all.f=
ilter(Q(layer_version__up_branch__release =3D Project.objects.get(request.s=
ession[&#39;project_id&#39;]).release) | Q(layer_version__build__in =3D Pro=
ject.objects.get(request.session[&#39;project_id&#39;]).build_set.all()))<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset_with_search =3D _get_queryset(Ma=
chine, queryset_all, None, search_term, ordering_string, &#39;-name&#39;)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0queryset =3D _get_queryset(Machine, query=
set_all, filter_string, search_term, ordering_string, &#39;-name&#39;)<br>
@@ -2643,7 +2646,7 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0def projects(request):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0template=3D&quot;projects.html&quot;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 (pagesize, orderby) =3D _get_parameters_values=
(request, 10, &#39;updated:-&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 (pagesize, orderby) =3D _get_parameters_values=
(request, 10, &#39;updated:+&#39;)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mandatory_parameters =3D { &#39;count&#39=
;: pagesize,=C2=A0 &#39;page&#39; : 1, &#39;orderby&#39; : orderby }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retval =3D _verify_parameters( request.GE=
T, mandatory_parameters )<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if retval:<br>
@@ -2654,8 +2657,8 @@ if toastermain.settings.MANAGED:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# boilerplate code that takes a request f=
or an object type and returns a queryset<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# for that object type. copypasta for all=
 needed table searches<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(filter_string, search_term, ordering_str=
ing) =3D _search_tuple(request, Project)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_with_search =3D _get_queryset(Project=
, queryset_all, None, search_term, ordering_string, &#39;updated:-&#39;)<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset =3D _get_queryset(Project, queryset_a=
ll, filter_string, search_term, ordering_string, &#39;updated:-&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset_with_search =3D _get_queryset(Project=
, queryset_all, None, search_term, ordering_string, &#39;-updated&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 queryset =3D _get_queryset(Project, queryset_a=
ll, filter_string, search_term, ordering_string, &#39;-updated&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# retrieve the objects that will be displ=
ayed in the table; projects a paginator and gets a page range to display<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0project_info =3D _build_page_range(Pagina=
tor(queryset, pagesize), request.GET.get(&#39;page&#39;, 1))<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr">Alex Damian<div>Yocto Project<br></d=
iv><div>SSG / OTC=C2=A0</div></div></div>
</div>

--001a113f0158701bc805072ee598--
