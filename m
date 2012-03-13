Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE10E01363
	for <poky@yoctoproject.org>; Tue, 13 Mar 2012 02:46:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2D9k8rH005390
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Mar 2012 02:46:08 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.241) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Tue, 13 Mar 2012 02:46:08 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>, <poky@yoctoproject.org>
Date: Tue, 13 Mar 2012 17:45:44 +0800
Message-ID: <ca7d0cffa5d6a1d1dd29c5a6e2185a95dc081faf.1331631626.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1331631626.git.kai.kang@windriver.com>
References: <cover.1331631626.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.241]
Subject: [PATCH 2/2] autospectacle.pl: create recipe file
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 13 Mar 2012 09:46:11 -0000
Content-Type: text/plain

[Yocto 1656]
It bases on original autospectacle.pl from project Meego. Add feature
to create .bb file according to parse result.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 scripts/autospectacle.pl |  117 ++++++++++++++++++++++++++++++++++++++++------
 1 files changed, 103 insertions(+), 14 deletions(-)

diff --git a/scripts/autospectacle.pl b/scripts/autospectacle.pl
index bb9f8dc..aba9ac3 100755
--- a/scripts/autospectacle.pl
+++ b/scripts/autospectacle.pl
@@ -1,5 +1,7 @@
 #!/usr/bin/perl -w
 
+#      Copyright (C) 2012 Wind River Systems, Inc.
+#
 #      Copyright (C) 2010 Intel Corporation
 #
 #   
@@ -29,6 +31,7 @@
 use File::Temp qw(tempdir);
 use File::Path qw(mkpath rmtree); 
 use File::Spec (); 
+use File::Basename qw(basename dirname);
 
 
 my $name = "";
@@ -42,6 +45,10 @@ my @sources;
 my @mainfiles;
 my @patches;
 
+my $md5sum = "";
+my $sh256sum = "";
+my @inherits;
+
 my $printed_subpackages = 0;
 my $fulldir = "";
 
@@ -70,6 +77,7 @@ my %failed_headers;
 
 my %licenses;
 my @license;
+my %lic_files;
 
 sub setup_licenses
 {
@@ -115,8 +123,14 @@ sub guess_license_from_file {
 	if (defined($licenses{$sha1})) {
 		my $lic = $licenses{$sha1};
 		push(@license, $lic);
+
+		my $md5output = `md5sum $copying`;
+		$md5output =~ /^([a-zA-Z0-9]*) /;
+		my $md5 = $1;
+		chomp($md5);
+		$lic_files{$copying} = $md5
 	}
-	
+
 	#
 	# We also must make sure that the COPYING/etc files
 	# end up in the main package as %doc..
@@ -124,7 +138,7 @@ sub guess_license_from_file {
 	$copying =~ s/$fulldir//g;
 	$copying =~ s/^\///g;
 	$copying = "\"\%doc " . $copying ."\"";
-	
+
 	push(@mainfiles, $copying);
 }
 
@@ -1522,7 +1536,7 @@ sub guess_name_from_url {
 	}
 	my $tarfile = $spliturl[0];
 	
-	if ($tarfile =~ /(.*?)\-([0-9\.\-\~]+)\.tar/) {
+	if ($tarfile =~ /(.*?)\-([0-9\.\-\~]+)[-\.].*?\.tar/) {
 		$name = $1;
 		$version = $2;
                 $version =~ s/\-/\_/g;
@@ -1650,7 +1664,7 @@ sub write_yaml
 	write_makefile();
 	write_changelog();
 
-	system("rm $name.spec");
+	system("rm $name.spec 2>/dev/null");
 	system("specify &> /dev/null");
 	if ($oscmode > 0) {
 	        system("osc addremove");
@@ -1659,6 +1673,65 @@ sub write_yaml
 
 }
 
+sub write_bbfile
+{
+	open(BBFILE, ">${name}_$version.bb");
+	print BBFILE "SUMMARY = \"$summary\"\n";
+	print BBFILE "DESCRIPTION = \"$description\"\n";
+
+	print BBFILE "LICENSE = \"@license\"\n";
+	print BBFILE "LIC_FILES_CHKSUM = \"";
+	foreach (keys %lic_files) {
+		print BBFILE "file://" . basename($_) . ";md5=$lic_files{$_} \\\n";
+	}
+	print BBFILE "\"\n\n";
+
+	if (@license <= 0) {
+		print "Can NOT get license from package itself.\n";
+		print "Please update the license and license file manually.\n";
+	}
+
+	if (@buildreqs > 0) {
+		my %saw;
+		my @out = grep(!$saw{$_}++,@buildreqs);
+		print BBFILE "DEPENDS = \"@out\"\n\n";
+	};
+
+	print BBFILE 'PR = "r0"' . "\n\n";
+	print BBFILE "SRC_URI = \"";
+	foreach (@sources) {
+		print BBFILE "$_ \\\n";
+	}
+	print BBFILE "\"\n\n";
+	print BBFILE "SRC_URI[md5sum] = \"$md5sum\"\n";
+	print BBFILE "SRC_URI[sha256sum] = \"$sha256sum\"\n";
+
+	if (@inherits) {
+		print BBFILE "inherit ";
+		foreach (@inherits) {
+			print BBFILE "$_ ";
+		}
+	}
+
+	close(BBFILE);
+
+	my $curdir = `pwd`;
+	chomp($curdir);
+	print "Create bb file: $curdir/${name}_$version.bb\n";
+}
+
+sub calculate_sums
+{
+    @_ = basename $dir;
+    my $md5output = `md5sum @_`;
+    $md5output =~ /^([a-zA-Z0-9]*) /;
+    $md5sum = $1;
+    chomp($md5sum);
+    my $sha256output = `sha256sum @_`;
+    $sha256output =~ /^([a-zA-Z0-9]*) /;
+    $sha256sum = $1;
+    chomp($sha256sum);
+}
 
 ############################################################################
 #
@@ -1696,33 +1769,40 @@ $dir = $ARGV[0];
 guess_name_from_url($dir);
 push(@sources, $dir);
 
-
 #system("cd $tmpdir; curl -s -O $dir");
 $orgdir = `pwd`;
 chomp($orgdir);
+my $outputdir = $name;
+if (! $name) {
+	$outputdir = basename $dir;
+}
+mkpath($outputdir);
+chdir($outputdir);
 print "Downloading package: $dir\n";
-system("wget --quiet $dir");
+system("wget --quiet $dir") == 0 or die "Download $dir failed.";
+
+calculate_sums($outputdir);
+
 print "Unpacking to       : $tmpdir\n";
 
-my @tgzfiles = <$orgdir/*.tgz>;
+my @tgzfiles = <$orgdir/$outputdir/*.tgz>;
 foreach (@tgzfiles) {
-        my $tgz = $_;
+        my $tgz = basename $_;
         my $tar = $tgz;
         $tar =~ s/tgz/tar\.gz/g;
         $dir =~ s/tgz/tar\.gz/g;
-        system("mv $tgz $tar");
+        system("mv $orgdir/$outputdir/$tgz $orgdir/$outputdir/$tar");
         guess_name_from_url($dir);
 }
 
-
 #
 # I really really hate the fact that meego deleted the -a option from tar.
 # this is a step backwards in time that is just silly.
 #
 
 
-system("cd $tmpdir; tar -jxf $orgdir/*\.tar\.bz2");
-system("cd $tmpdir; tar -zxf $orgdir/*\.tar\.gz");
+system("cd $tmpdir; tar -jxf $orgdir/$outputdir/*\.tar\.bz2 &>/dev/null");
+system("cd $tmpdir; tar -zxf $orgdir/$outputdir/*\.tar\.gz &>/dev/null");
 print "Parsing content    ....\n";
 my @dirs = <$tmpdir/*>;
 foreach (@dirs) {
@@ -1734,11 +1814,13 @@ $fulldir = $dir;
 if ( -e "$dir/autogen.sh" ) {
 	$configure = "autogen";
 	$uses_configure = 1;
+	push(@inherits, "autotools");
 }
 if ( -e "$dir/BUILD-CMAKE" ) {
 	$configure = "cmake";
 	push(@buildreqs, "cmake");
 	$uses_configure = 1;
+	push(@inherits, "cmake");
 }
 
 if ( -e "$dir/configure" ) {
@@ -1747,7 +1829,7 @@ if ( -e "$dir/configure" ) {
 
 my @files = <$dir/configure.*>;
 
-my $findoutput = `find $dir -name "configure.ac"`;
+my $findoutput = `find $dir -name "configure.ac" 2>/dev/null`;
 my @findlist = split(/\n/, $findoutput);
 foreach (@findlist) {
 	push(@files, $_);
@@ -1756,7 +1838,7 @@ foreach (@files) {
 	process_configure_ac("$_");
 }
 
-$findoutput = `find $dir -name "*.pro"`;
+$findoutput = `find $dir -name "*.pro" 2>/dev/null`;
 @findlist = split(/\n/, $findoutput);
 foreach (@findlist) {
 	process_qmake_pro("$_");
@@ -1765,6 +1847,7 @@ foreach (@findlist) {
 if (-e "$dir/$name.pro") {
         $builder = "qmake";
         push_pkgconfig_buildreq("Qt");
+	push(@inherits, "qmake2");
 }
 
 
@@ -1804,6 +1887,12 @@ foreach (@files) {
 
 guess_description($dir);
 
+#
+# Output of bbfile file
+#
+write_bbfile();
+chdir($orgdir);
+exit 0;
 
 #
 # Output of the yaml file
-- 
1.7.5.4


