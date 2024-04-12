Return-Path: <ninette@thehoodiefirm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BEA1C41513
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 15:33:15 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.50187.1712935988482056887
 for <poky@lists.yoctoproject.org>;
 Fri, 12 Apr 2024 08:33:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thehoodiefirm-com.20230601.gappssmtp.com header.s=20230601 header.b=IOPQfm6h;
 spf=neutral (domain: thehoodiefirm.com, ip: 209.85.208.52, mailfrom: ninette@thehoodiefirm.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56e56ee8d5cso1432629a12.2
        for <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 08:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thehoodiefirm-com.20230601.gappssmtp.com; s=20230601; t=1712935987; x=1713540787; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6s5sWiceyBTsH3kZm31IGPFI5TuXN4k2D0HgTwSDlgg=;
        b=IOPQfm6hMgbo/kElqUxhCkhajrWUcDVIlH8N7BtmvHlm/obfeIkIWTjkZKl8R4f/7Q
         oKJWAA4qr1JgnEMlyhzy3w3A7SgXv36pn8Sj2Li5OWac9WgDwWPq2UyJwlgLW27LPv1g
         mQfxBsxg42zkw+H/y9GBnfZwyeS0tDwrE4jtco8mXsXqhpdjPOPScBWvOpxnCxnPuFlq
         v7d1emjwWkf7GeiRNVeiagVA9JDMWxIQurHd002lBlXGg1ucq6P7ffbox6H6N3uKvdhR
         EOxIivfM3mLquXnYJHQSO0npUda37UuvoN5rGS9LyNzwaxPIo+A9BzpDgQOhf5UeZC/V
         s9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712935987; x=1713540787;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6s5sWiceyBTsH3kZm31IGPFI5TuXN4k2D0HgTwSDlgg=;
        b=SePtTIC7NFEiCzZtBSE7Ay62R6LtvuqFrjdXS8GqN7I3jpKLCGUBnidrekY2ohYFem
         //Jx9rNgPCKdWOvwwhJ4zZ/Lk02Ty+xyw2pVOlWlD5iwNE3FUwftsPzgveld/9Wdit1h
         N2DCSv0xPbo4dVxGmWx71Y5RXa5L3pmrVdcDEuXgT1M6YGFNPC9n/ITgct5PrF2xnR5h
         f2+KqOwSrABz0KRoPcVqomWiiC/L28A+7X0dGUpDObInvcHzj2Ml0K2h2sZyAXkYGZ8A
         LoGcRKbZetfKco9mr2qROX0PUSviAL7VCmh6TbqY81niE7sqQ54Sni/pzs44g62y2u6W
         ypkA==
X-Gm-Message-State: AOJu0YxkZe3LZMovwhc54GsNT9nOk7fsNjniuWi2txUhn59nxlTHAVPH
	cboC9fEukrdJZxyWh9vsgN4AiQ/D8FsnCLYQoz0On62ZkFfxaaGgTQ48hsPJj5M89tEihHKRc3c
	X
X-Google-Smtp-Source: AGHT+IGVURqx/zGZhvt2CI8rr78rZ8BM2HXpBi+n7rNxOOPGdngMi1Xg0rhEeWbUUVRE1DCT/bkywQ==
X-Received: by 2002:a50:f693:0:b0:56e:2181:da0d with SMTP id d19-20020a50f693000000b0056e2181da0dmr2292097edn.29.1712935986803;
        Fri, 12 Apr 2024 08:33:06 -0700 (PDT)
Received: from localhost.localdomain ([95.90.238.88])
        by smtp.gmail.com with ESMTPSA id j1-20020aa7de81000000b0056e62321eedsm1769567edv.17.2024.04.12.08.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 08:33:06 -0700 (PDT)
From: Ninette Adhikari <ninette@thehoodiefirm.com>
To: poky@lists.yoctoproject.org
Cc: Ninette Adhikari <13760198+ninetteadhikari@users.noreply.github.com>,
	Ninette Adhikari <ninette@thehoodiefirm.com>
Subject: [PATCH 1/3] oe-build-perf-report: Add apache echarts to make report interactive
Date: Fri, 12 Apr 2024 17:32:59 +0200
Message-ID: <20240412153301.87391-2-ninette@thehoodiefirm.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412153301.87391-1-ninette@thehoodiefirm.com>
References: <20240412153301.87391-1-ninette@thehoodiefirm.com>
Reply-To: engineering@neighbourhood.ie
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 12 Apr 2024 15:33:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13321

From: Ninette Adhikari <13760198+ninetteadhikari@users.noreply.github.com>

- Add Apache echarts (https://echarts.apache.org/en/index.html) library to create build performance charts.
- Restructure data to time and value array format so that it can be used by echarts.
- This commit also converts test duration to minutes to map against the values axis.
- Zoom is added to the line charts.

Signed-off-by: Ninette Adhikari <ninette@thehoodiefirm.com>
---
 .../build_perf/html/measurement_chart.html    | 116 +++++++++++-------
 scripts/lib/build_perf/html/report.html       |   6 +-
 2 files changed, 72 insertions(+), 50 deletions(-)

diff --git a/scripts/lib/build_perf/html/measurement_chart.html b/scripts/lib/build_perf/html/measurement_chart.html
index 65f1a227ad..ffec3d09db 100644
--- a/scripts/lib/build_perf/html/measurement_chart.html
+++ b/scripts/lib/build_perf/html/measurement_chart.html
@@ -1,50 +1,76 @@
-<script type="text/javascript">
-  chartsDrawing += 1;
-  google.charts.setOnLoadCallback(drawChart_{{ chart_elem_id }});
-  function drawChart_{{ chart_elem_id }}() {
-    var data = new google.visualization.DataTable();
+<script type="module">
+  // Get raw data
+  const rawData = [
+    {% for sample in measurement.samples %}
+      [{{ sample.commit_num }}, {{ sample.mean.gv_value() }}, {{ sample.start_time }}],
+    {% endfor %}
+  ];
 
-    // Chart options
-    var options = {
-      theme : 'material',
-      legend: 'none',
-      hAxis: { format: '', title: 'Commit number',
-               minValue: {{ chart_opts.haxis.min }},
-               maxValue: {{ chart_opts.haxis.max }} },
-      {% if measurement.type == 'time' %}
-      vAxis: { format: 'h:mm:ss' },
-      {% else %}
-      vAxis: { format: '' },
-      {% endif %}
-      pointSize: 5,
-      chartArea: { left: 80, right: 15 },
-    };
+  const convertToMinute = (time) => {
+    return time[0]*60 + time[1] + time[2]/60 + time[3]/3600;
+  }
 
-    // Define data columns
-    data.addColumn('number', 'Commit');
-    data.addColumn('{{ measurement.value_type.gv_data_type }}',
-                   '{{ measurement.value_type.quantity }}');
-    // Add data rows
-    data.addRows([
-      {% for sample in measurement.samples %}
-        [{{ sample.commit_num }}, {{ sample.mean.gv_value() }}],
-      {% endfor %}
-    ]);
+  // Convert raw data to the format: [time, value]
+  const data = rawData.map(([commit, value, time]) => {
+    return [
+      new Date(time * 1000).getTime(), // The Date object takes values in milliseconds rather than seconds. So to use a Unix timestamp we have to multiply it by 1000.
+      Array.isArray(value) ? convertToMinute(value) : value // Assuming the array values are duration in the format [hours, minutes, seconds, milliseconds]
+    ]
+  });
 
-    // Finally, draw the chart
-    chart_div = document.getElementById('{{ chart_elem_id }}');
-    var chart = new google.visualization.LineChart(chart_div);
-    google.visualization.events.addListener(chart, 'ready', function () {
-      //chart_div = document.getElementById('{{ chart_elem_id }}');
-      //chart_div.innerHTML = '<img src="' + chart.getImageURI() + '">';
-      png_div = document.getElementById('{{ chart_elem_id }}_png');
-      png_div.outerHTML = '<a id="{{ chart_elem_id }}_png" href="' + chart.getImageURI() + '">PNG</a>';
-      console.log("CHART READY: {{ chart_elem_id }}");
-      chartsDrawing -= 1;
-      if (chartsDrawing == 0)
-        console.log("ALL CHARTS READY");
-    });
-    chart.draw(data, options);
-}
+  // Set chart options
+  const option = {
+    tooltip: {
+      trigger: 'axis',
+      position: function (pt) {
+        return [pt[0], '10%'];
+      },
+      valueFormatter: (value) => value.toFixed(2)
+    },
+    xAxis: {
+      type: 'time',
+    },
+    yAxis: {
+      name: '{{ measurement.value_type.quantity }}' == 'time' ? 'Duration (minutes)' : 'Disk size (MB)',
+      type: 'value',
+      min: function(value) {
+        return Math.round(value.min - 0.5);
+      },
+      max: function(value) {
+        return Math.round(value.max + 0.5);
+      }
+    },
+    dataZoom: [
+      {
+        type: 'inside',
+        start: 0,
+        end: 100
+      },
+      {
+        start: 0,
+        end: 100
+      }
+    ],
+    series: [
+      {
+        name: '{{ measurement.value_type.quantity }}',
+        type: 'line',
+        smooth: true,
+        symbol: 'none',
+        data: data
+      }
+    ]
+  };
+
+  // Draw chart
+  const chart_div = document.getElementById('{{ chart_elem_id }}');
+  const measurement_chart= echarts.init(chart_div, null, {
+    height: 320
+  });
+  // Change chart size with browser resize
+  window.addEventListener('resize', function() {
+    measurement_chart.resize();
+  });
+  measurement_chart.setOption(option);
 </script>
 
diff --git a/scripts/lib/build_perf/html/report.html b/scripts/lib/build_perf/html/report.html
index d1ba6f2578..653fd985bc 100644
--- a/scripts/lib/build_perf/html/report.html
+++ b/scripts/lib/build_perf/html/report.html
@@ -3,11 +3,7 @@
 <head>
 {# Scripts, for visualization#}
 <!--START-OF-SCRIPTS-->
-<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
-<script type="text/javascript">
-google.charts.load('current', {'packages':['corechart']});
-var chartsDrawing = 0;
-</script>
+<script src=" https://cdn.jsdelivr.net/npm/echarts@5.5.0/dist/echarts.min.js "></script>
 
 {# Render measurement result charts #}
 {% for test in test_data %}
-- 
2.44.0


