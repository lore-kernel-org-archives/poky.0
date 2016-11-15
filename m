Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F9E8E00546; Tue, 15 Nov 2016 13:14:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD1CE00546
	for <poky@yoctoproject.org>; Tue, 15 Nov 2016 13:14:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 15 Nov 2016 13:14:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,496,1473145200"; d="scan'208";a="1059885169"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.5.38])
	by orsmga001.jf.intel.com with ESMTP; 15 Nov 2016 13:14:49 -0800
From: leonardo.sandoval.gonzalez@linux.intel.com
To: poky@yoctoproject.org
Date: Tue, 15 Nov 2016 15:19:53 -0600
Message-Id: <6177d4c8121ebf5a8c390bec71a6d7ee86a85386.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
References: <cover.1479244148.git.leonardo.sandoval.gonzalez@linux.intel.com>
Subject: [PATCH 3/3] bb-perf: plot histograms base on buildstats data
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
X-List-Received-Date: Tue, 15 Nov 2016 21:14:53 -0000

From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

Scripts that produces script data to be consumed by gnuplot.
There are two possible plots depending if either the
-S parameter is present or not:

    * without -S: Produces a histogram listing top N recipes/tasks versus
      stats. The first stat defined in the -s parameter is the one taken
      into account for ranking
    * -S: Produces a histogram listing tasks versus stats.  In this case,
      the value of each stat is the sum for that particular stat in all recipes found.
      Stats values  are in descending order defined by the first stat defined on -s

EXAMPLES

1. Top recipes' tasks taking into account utime

    $ buildstats-plot.sh -s utime | gnuplot -p

2. Tasks versus utime:stime

    $ buildstats-plot.sh -s utime:stime -S | gnuplot -p

3. Tasks versus IO write_bytes:IO read_bytes

    $ buildstats-plot.sh -s 'IO write_bytes:IO read_bytes' -S | gnuplot -p

Signed-off-by: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
---
 scripts/contrib/bb-perf/buildstats-plot.sh | 157 +++++++++++++++++++++++++++++
 1 file changed, 157 insertions(+)
 create mode 100755 scripts/contrib/bb-perf/buildstats-plot.sh

diff --git a/scripts/contrib/bb-perf/buildstats-plot.sh b/scripts/contrib/bb-perf/buildstats-plot.sh
new file mode 100755
index 0000000..7e8ae04
--- /dev/null
+++ b/scripts/contrib/bb-perf/buildstats-plot.sh
@@ -0,0 +1,157 @@
+#!/usr/bin/env bash
+#
+# Copyright (c) 2011, Intel Corporation.
+# All rights reserved.
+#
+# This program is free software; you can redistribute it and/or modify
+# it under the terms of the GNU General Public License as published by
+# the Free Software Foundation; either version 2 of the License, or
+# (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
+#
+# DESCRIPTION
+#
+# Produces script data to be consumed by gnuplot. There are two possible plots
+# depending if either the -S parameter is present or not:
+#
+#     * without -S: Produces a histogram listing top N recipes/tasks versus
+#       stats. The first stat defined in the -s parameter is the one taken
+#       into account for ranking
+#     * -S: Produces a histogram listing tasks versus stats.  In this case,
+#       the value of each stat is the sum for that particular stat in all recipes found.
+#       Stats values  are in descending order defined by the first stat defined on -s
+#
+# EXAMPLES
+#
+# 1. Top recipes' tasks taking into account utime
+#
+#     $ buildstats-plot.sh -s utime | gnuplot -p
+#
+# 2. Tasks versus utime:stime
+#
+#     $ buildstats-plot.sh -s utime:stime -S | gnuplot -p
+#
+# 3. Tasks versus IO write_bytes:IO read_bytes
+#
+#     $ buildstats-plot.sh -s 'IO write_bytes:IO read_bytes' -S | gnuplot -p
+#
+# AUTHORS
+# Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
+#
+
+set -o nounset
+set -o errexit
+
+BS_DIR="tmp/buildstats"
+N=10
+STATS="utime"
+SUM=""
+OUTDATA_FILE="$PWD/buildstats-plot.out"
+
+function usage {
+    CMD=$(basename $0)
+    cat <<EOM
+Usage: $CMD [-b buildstats_dir] [-t do_task]
+  -b buildstats The path where the folder resides
+                (default: "$BS_DIR")
+  -n N          Top N recipes to display. Ignored if -S is present
+                (default: "$N")
+  -s stats      The stats to be matched. If more that one stat, units
+                should be the same because data is plot as histogram.
+                (see buildstats.sh -h for all options) or any other defined
+                (build)stat separated by colons, i.e. stime:utime
+                (default: "$STATS")
+  -S            Sum values for a particular stat for found recipes
+  -o            Output data file.
+                (default: "$OUTDATA_FILE")
+  -h            Display this help message
+EOM
+}
+
+# Parse and validate arguments
+while getopts "b:n:s:o:Sh" OPT; do
+	case $OPT in
+	b)
+		BS_DIR="$OPTARG"
+		;;
+	n)
+		N="$OPTARG"
+		;;
+	s)
+	        STATS="$OPTARG"
+	        ;;
+	S)
+	        SUM="y"
+	        ;;
+	o)
+	        OUTDATA_FILE="$OPTARG"
+	        ;;
+	h)
+		usage
+		exit 0
+		;;
+	*)
+		usage
+		exit 1
+		;;
+	esac
+done
+
+# Get number of stats
+IFS=':'; statsarray=(${STATS}); unset IFS
+nstats=${#statsarray[@]}
+
+# Get script folder, use to run buildstats.sh
+CD=$(dirname $0)
+
+# Parse buildstats recipes to produce a single table
+OUTBUILDSTATS="$PWD/buildstats.log"
+$CD/buildstats.sh -H -s "$STATS" -H > $OUTBUILDSTATS
+
+# Get headers
+HEADERS=$(cat $OUTBUILDSTATS | sed -n -e '1s/ /-/g' -e '1s/:/ /gp')
+
+echo -e "set boxwidth 0.9 relative"
+echo -e "set style data histograms"
+echo -e "set style fill solid 1.0 border lt -1"
+echo -e "set xtics rotate by 45 right"
+
+# Get output data
+if [ -z "$SUM" ]; then
+    cat $OUTBUILDSTATS | sed -e '1d' | sort -k3 -n -r | head -$N > $OUTDATA_FILE
+    # include task at recipe column
+    sed -i -e "1i\
+${HEADERS}" $OUTDATA_FILE
+    echo -e "set title \"Top task/recipes\""
+    echo -e "plot for [COL=3:`expr 3 + ${nstats} - 1`] '${OUTDATA_FILE}' using COL:xtic(stringcolumn(1).' '.stringcolumn(2)) title columnheader(COL)"
+else
+
+    # Construct datatamash sum argument (sum 3 sum 4 ...)
+    declare -a sumargs
+    j=0
+    for i in `seq $nstats`; do
+	sumargs[j]=sum; j=$(( $j + 1 ))
+	sumargs[j]=`expr 3 + $i - 1`;  j=$(( $j + 1 ))
+    done
+
+    # Do the processing with datamash
+    cat $OUTBUILDSTATS | sed -e '1d' | datamash -t ' ' -g1 ${sumargs[*]} | sort -k2 -n -r > $OUTDATA_FILE
+
+    # Include headers into resulted file, so we can include gnuplot xtics
+    HEADERS=$(echo $HEADERS | sed -e 's/recipe//1')
+    sed -i -e "1i\
+${HEADERS}" $OUTDATA_FILE
+
+    # Plot
+    echo -e "set title \"Sum stats values per task for all recipes\""
+    echo -e "plot for [COL=2:`expr 2 + ${nstats} - 1`] '${OUTDATA_FILE}' using COL:xtic(1) title columnheader(COL)"
+fi
+
-- 
2.1.4


