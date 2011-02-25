Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91A244C8004D
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 19:17:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Feb 2011 17:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,221,1297065600"; d="scan'208";a="393813338"
Received: from unknown (HELO [10.255.12.120]) ([10.255.12.120])
	by azsmga001.ch.intel.com with ESMTP; 24 Feb 2011 17:17:39 -0800
Message-ID: <4D670332.2090308@intel.com>
Date: Thu, 24 Feb 2011 17:17:38 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1298452018.git.jingdong.lu@windriver.com>
	<393a65bacbb6f8fe010973192b6e37929ccdaea4.1298452018.git.jingdong.lu@windriver.com>
In-Reply-To: <393a65bacbb6f8fe010973192b6e37929ccdaea4.1298452018.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] task-poky-lsb: add necessary packages name
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
X-List-Received-Date: Fri, 25 Feb 2011 01:17:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/23/2011 01:28 AM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> In order to install and run LSB test cases we should add some necessary packages name
> into task-poky-lsb for lsb image.
>
Jingdong,

I know this is late  in coming, but Richard I and talked about this 
change and we would like you to use the perl-modules and python-modules 
instead of the complete list, which might cause dependency issues later.

Also, when I tested this, I had build problems with mesa-dri not being 
provided correctly.

Sau!

> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   meta/recipes-extended/tasks/task-poky-lsb.bb |  448 +++++++++++++++++++++++++-
>   1 files changed, 447 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-extended/tasks/task-poky-lsb.bb b/meta/recipes-extended/tasks/task-poky-lsb.bb
> index 9d308e7..583aa51 100644
> --- a/meta/recipes-extended/tasks/task-poky-lsb.bb
> +++ b/meta/recipes-extended/tasks/task-poky-lsb.bb
> @@ -3,7 +3,7 @@
>   #
>
>   DESCRIPTION = "Create Small Image Tasks"
> -PR = "r2"
> +PR = "r3"
>   LICENSE = "MIT"
>   LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                       file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> @@ -28,8 +28,14 @@ PACKAGES = "\
>       task-poky-tcl \
>       task-poky-tcl-dbg \
>       task-poky-tcl-dev \
> +    task-poky-lsb-perl-add \
> +    task-poky-lsb-python-add \
> +    task-poky-lsb-graphic-add \
> +    task-poky-lsb-runtime-add \
> +    task-poky-lsb-command-add \
>       "
>
> +
>   ALLOW_EMPTY = "1"
>
>   RDEPENDS_task-poky-lsb = "\
> @@ -39,6 +45,11 @@ RDEPENDS_task-poky-lsb = "\
>       task-poky-perl \
>       task-poky-python \
>       task-poky-tcl \
> +    task-poky-lsb-perl-add \
> +    task-poky-lsb-python-add \
> +    task-poky-lsb-graphic-add \
> +    task-poky-lsb-runtime-add \
> +    task-poky-lsb-command-add \
>       "
>
>   #
> @@ -111,3 +122,438 @@ RDEPENDS_task-poky-misc = "\
>       usbutils \
>       zlib \
>       "
> +
> +RDEPENDS_task-poky-lsb-command-add = "\
> +    localedef \
> +    fontconfig-utils \
> +    mailx \
> +    msmtp \
> +"
> +#    cups \
> +
> +RDEPENDS_task-poky-lsb-perl-add = "\
> +    perl-module-anydbm-file \
> +    perl-module-attribute-handlers \
> +    perl-module-attributes \
> +    perl-module-autoloader \
> +    perl-module-autosplit \
> +    perl-module-autouse \
> +    perl-module-b \
> +    perl-module-base \
> +    perl-module-b-concise \
> +    perl-module-b-debug \
> +    perl-module-b-deparse \
> +    perl-module-benchmark \
> +    perl-module-bigfloat \
> +    perl-module-bigint \
> +    perl-module-bignum \
> +    perl-module-bigrat \
> +    perl-module-blib \
> +    perl-module-b-lint \
> +    perl-module-b-showlex \
> +    perl-module-b-terse \
> +    perl-module-b-xref \
> +    perl-module-bytes \
> +    perl-module-bytes-heavy \
> +    perl-module-carp \
> +    perl-module-carp-heavy \
> +    perl-module-cgi \
> +    perl-module-cgi-apache \
> +    perl-module-cgi-carp \
> +    perl-module-cgi-cookie \
> +    perl-module-cgi-fast \
> +    perl-module-cgi-pretty \
> +    perl-module-cgi-push \
> +    perl-module-cgi-switch \
> +    perl-module-cgi-util \
> +    perl-module-charnames \
> +    perl-module-class-isa \
> +    perl-module-class-struct \
> +    perl-module-config \
> +    perl-module-config-git \
> +    perl-module-constant \
> +    perl-module-cpan \
> +    perl-module-cwd \
> +    perl-module-data \
> +    perl-module-data-dumper \
> +    perl-module-db \
> +    perl-module-dbm-filter \
> +    perl-module-dbm-filter-compress \
> +    perl-module-dbm-filter-encode \
> +    perl-module-dbm-filter-int32 \
> +    perl-module-dbm-filter-null \
> +    perl-module-dbm-filter-utf8 \
> +    perl-module-deprecate \
> +    perl-module-devel \
> +    perl-module-devel-dprof \
> +    perl-module-devel-innerpackage \
> +    perl-module-devel-peek \
> +    perl-module-devel-ppport \
> +    perl-module-devel-selfstubber \
> +    perl-module-diagnostics \
> +    perl-module-digest \
> +    perl-module-digest-base \
> +    perl-module-digest-file \
> +    perl-module-digest-md5 \
> +    perl-module-dirhandle \
> +    perl-module-dumpvalue \
> +    perl-module-dumpvar \
> +    perl-module-dynaloader \
> +    perl-module-encode \
> +    perl-module-encode-alias \
> +    perl-module-encode-byte \
> +    perl-module-encode-cjkconstants \
> +    perl-module-encode-cn \
> +    perl-module-encode-cn-hz \
> +    perl-module-encode-config \
> +    perl-module-encode-ebcdic \
> +    perl-module-encode-encoder \
> +    perl-module-encode-encoding \
> +    perl-module-encode-gsm0338 \
> +    perl-module-encode-guess \
> +    perl-module-encode-jp \
> +    perl-module-encode-jp-h2z \
> +    perl-module-encode-jp-jis7 \
> +    perl-module-encode-kr-2022-kr \
> +    perl-module-encode-kr \
> +    perl-module-encode-mime-header \
> +    perl-module-encode-symbol \
> +    perl-module-encode-tw \
> +    perl-module-encode-unicode \
> +    perl-module-encode-unicode-utf7 \
> +    perl-module-encoding \
> +    perl-module-english \
> +    perl-module-env \
> +    perl-module-errno \
> +    perl-module-exporter \
> +    perl-module-exporter-heavy \
> +    perl-module-extutils-command \
> +    perl-module-extutils-command-mm \
> +    perl-module-extutils-install \
> +    perl-module-extutils-installed \
> +    perl-module-extutils-liblist \
> +    perl-module-extutils-liblist-kid \
> +    perl-module-extutils-makemaker \
> +    perl-module-extutils-makemaker-config \
> +    perl-module-extutils-manifest \
> +    perl-module-extutils-mkbootstrap \
> +    perl-module-extutils-mksymlists \
> +    perl-module-extutils-mm \
> +    perl-module-extutils-mm-any \
> +    perl-module-extutils-mm-unix \
> +    perl-module-extutils-my \
> +    perl-module-extutils-packlist \
> +    perl-module-extutils-testlib \
> +    perl-module-fatal \
> +    perl-module-fcntl \
> +    perl-module-feature \
> +    perl-module-fields \
> +    perl-module-file \
> +    perl-module-file-basename \
> +    perl-module-filecache \
> +    perl-module-file-checktree \
> +    perl-module-file-compare \
> +    perl-module-file-copy \
> +    perl-module-file-dosglob \
> +    perl-module-file-fetch \
> +    perl-module-file-find \
> +    perl-module-file-glob \
> +    perl-module-filehandle \
> +    perl-module-file-path \
> +    perl-module-file-spec \
> +    perl-module-file-spec-functions \
> +    perl-module-file-spec-unix \
> +    perl-module-file-stat \
> +    perl-module-file-temp \
> +    perl-module-filetest \
> +    perl-module-filter \
> +    perl-module-filter-simple \
> +    perl-module-filter-util-call \
> +    perl-module-findbin \
> +    perl-module-gdbm-file \
> +    perl-module-getopt-long \
> +    perl-module-getopt-std \
> +    perl-module-hash \
> +    perl-module-hash-util \
> +    perl-module-i18n \
> +    perl-module-i18n-collate \
> +    perl-module-i18n-langinfo \
> +    perl-module-i18n-langtags \
> +    perl-module-i18n-langtags-detect \
> +    perl-module-i18n-langtags-list \
> +    perl-module-if \
> +    perl-module-integer \
> +    perl-module-io \
> +    perl-module-io-dir \
> +    perl-module-io-file \
> +    perl-module-io-handle \
> +    perl-module-io-pipe \
> +    perl-module-io-poll \
> +    perl-module-io-seekable \
> +    perl-module-io-select \
> +    perl-module-io-socket \
> +    perl-module-io-socket-inet \
> +    perl-module-io-socket-unix \
> +    perl-module-ipc \
> +    perl-module-ipc-msg \
> +    perl-module-ipc-open2 \
> +    perl-module-ipc-open3 \
> +    perl-module-ipc-semaphore \
> +    perl-module-ipc-sysv \
> +    perl-module-less \
> +    perl-module-lib \
> +    perl-module-list-util \
> +    perl-module-list-util-pp \
> +    perl-module-locale \
> +    perl-module-locale-constants \
> +    perl-module-locale-country \
> +    perl-module-locale-currency \
> +    perl-module-locale-language \
> +    perl-module-locale-maketext \
> +    perl-module-locale-maketext-guts \
> +    perl-module-locale-maketext-gutsloader \
> +    perl-module-locale-script \
> +    perl-module-math \
> +    perl-module-math-bigfloat \
> +    perl-module-math-bigint \
> +    perl-module-math-bigint-calc \
> +    perl-module-math-bigint-calcemu \
> +    perl-module-math-bigrat \
> +    perl-module-math-complex \
> +    perl-module-math-trig \
> +    perl-module-memoize \
> +    perl-module-memoize-anydbm-file \
> +    perl-module-memoize-expire \
> +    perl-module-memoize-expirefile \
> +    perl-module-memoize-expiretest \
> +    perl-module-memoize-sdbm-file \
> +    perl-module-memoize-storable \
> +    perl-module-mime \
> +    perl-module-mime-base64 \
> +    perl-module-mime-quotedprint \
> +    perl-module-mro \
> +    perl-module-net-cmd \
> +    perl-module-net-config \
> +    perl-module-net-domain \
> +    perl-module-net-ftp \
> +    perl-module-net-hostent \
> +    perl-module-net-netent \
> +    perl-module-net-netrc \
> +    perl-module-net-nntp \
> +    perl-module-net-ping \
> +    perl-module-net-pop3 \
> +    perl-module-net-protoent \
> +    perl-module-net-servent \
> +    perl-module-net-smtp \
> +    perl-module-net-time \
> +    perl-module-newgetopt \
> +    perl-module-next \
> +    perl-module-o \
> +    perl-module-opcode \
> +    perl-module-open \
> +    perl-module-overload \
> +    perl-module-perlio \
> +    perl-module-perlio-encoding \
> +    perl-module-perlio-scalar \
> +    perl-module-perlio-via \
> +    perl-module-perlio-via-quotedprint \
> +    perl-module-pluggable \
> +    perl-module-pluggable.pm \
> +    perl-module-pod-checker \
> +    perl-module-pod-escapes \
> +    perl-module-pod-find \
> +    perl-module-pod-functions \
> +    perl-module-pod-html \
> +    perl-module-pod-inputobjects \
> +    perl-module-pod-latex \
> +    perl-module-pod-man \
> +    perl-module-pod-parselink \
> +    perl-module-pod-parser \
> +    perl-module-pod-parseutils \
> +    perl-module-pod-perldoc \
> +    perl-module-pod-perldoc-baseto \
> +    perl-module-pod-perldoc-getoptsoo \
> +    perl-module-pod-perldoc-tochecker \
> +    perl-module-pod-perldoc-toman \
> +    perl-module-pod-perldoc-tonroff \
> +    perl-module-pod-perldoc-topod \
> +    perl-module-pod-perldoc-tortf \
> +    perl-module-pod-perldoc-totext \
> +    perl-module-pod-perldoc-totk \
> +    perl-module-pod-perldoc-toxml \
> +    perl-module-pod-plainer \
> +    perl-module-pod-plaintext \
> +    perl-module-pod-select \
> +    perl-module-pod-simple \
> +    perl-module-pod-simple-blackbox \
> +    perl-module-pod-simple-linksection \
> +    perl-module-pod-text \
> +    perl-module-pod-text-color \
> +    perl-module-pod-text-overstrike \
> +    perl-module-pod-text-termcap \
> +    perl-module-pod-usage \
> +    perl-module-posix \
> +    perl-module-re \
> +    perl-module-safe \
> +    perl-module-scalar-util \
> +    perl-module-scalar-util-pp \
> +    perl-module-sdbm-file \
> +    perl-module-search-dict \
> +    perl-module-selectsaver \
> +    perl-module-selfloader \
> +    perl-module-shell \
> +    perl-module-sigtrap \
> +    perl-module-socket \
> +    perl-module-sort \
> +    perl-module-storable \
> +    perl-module-strict \
> +    perl-module-subs \
> +    perl-module-symbol \
> +    perl-module-sys \
> +    perl-module-sys-hostname \
> +    perl-module-sys-syslog \
> +    perl-module-tap-base \
> +    perl-module-tap-formatter-base \
> +    perl-module-tap-formatter-file \
> +    perl-module-tap-formatter-file-session \
> +    perl-module-tap-formatter-session \
> +    perl-module-tap-harness \
> +    perl-module-tap-object \
> +    perl-module-tap-parser \
> +    perl-module-tap-parser-aggregator \
> +    perl-module-tap-parser-grammar \
> +    perl-module-tap-parser-iterator \
> +    perl-module-tap-parser-iterator-array \
> +    perl-module-tap-parser-iteratorfactory \
> +    perl-module-tap-parser-iterator-process \
> +    perl-module-tap-parser-iterator-stream \
> +    perl-module-tap-parser-result \
> +    perl-module-tap-parser-result-bailout \
> +    perl-module-tap-parser-result-comment \
> +    perl-module-tap-parser-resultfactory \
> +    perl-module-tap-parser-result-plan \
> +    perl-module-tap-parser-result-pragma \
> +    perl-module-tap-parser-result-test \
> +    perl-module-tap-parser-result-unknown \
> +    perl-module-tap-parser-result-version \
> +    perl-module-tap-parser-result-yaml \
> +    perl-module-tap-parser-scheduler \
> +    perl-module-tap-parser-scheduler-job \
> +    perl-module-tap-parser-scheduler-spinner \
> +    perl-module-tap-parser-source \
> +    perl-module-tap-parser-source-perl \
> +    perl-module-tap-parser-utils \
> +    perl-module-tap-parser-yamlish-reader \
> +    perl-module-term-ansicolor \
> +    perl-module-term-cap \
> +    perl-module-term-complete \
> +    perl-module-term-readline \
> +    perl-module-test \
> +    perl-module-test-builder \
> +    perl-module-test-builder-module \
> +    perl-module-test-builder-tester \
> +    perl-module-test-builder-tester-color \
> +    perl-module-test-harness \
> +    perl-module-test-more \
> +    perl-module-test-simple \
> +    perl-module-text-abbrev \
> +    perl-module-text-balanced \
> +    perl-module-text-parsewords \
> +    perl-module-text-soundex \
> +    perl-module-text-tabs \
> +    perl-module-text-wrap \
> +    perl-module-threads \
> +    perl-module-threads-shared \
> +    perl-module-tie-array \
> +    perl-module-tie-file \
> +    perl-module-tie-handle \
> +    perl-module-tie-hash \
> +    perl-module-tie-hash-namedcapture \
> +    perl-module-tie-memoize \
> +    perl-module-tie-refhash \
> +    perl-module-tie-scalar \
> +    perl-module-tie-stdhandle \
> +    perl-module-tie-substrhash \
> +    perl-module-time \
> +    perl-module-time-gmtime \
> +    perl-module-time-hires \
> +    perl-module-time-local \
> +    perl-module-timelocal \
> +    perl-module-time-localtime \
> +    perl-module-time-tm \
> +    perl-module-unicode \
> +    perl-module-unicode-collate \
> +    perl-module-unicode-normalize \
> +    perl-module-unicode-ucd \
> +    perl-module-unicore \
> +    perl-module-universal \
> +    perl-module-user-grent \
> +    perl-module-user-pwent \
> +    perl-module-utf8 \
> +    perl-module-utf8-heavy \
> +    perl-module-vars \
> +    perl-module-vmsish \
> +    perl-module-warnings \
> +    perl-module-warnings-register \
> +    perl-module-xsloader \
> +    perl-dev \
> +    perl-misc \
> +    perl-pod \
> +"
> +
> +RDEPENDS_task-poky-lsb-python-add = "\
> +    python-misc \
> +    python-unittest \
> +    python-shell \
> +    python-compile \
> +    python-crypt \
> +    python-datetime \
> +    python-difflib \
> +    python-doctest \
> +    python-fcntl \
> +    python-hotshot \
> +    python-html \
> +    python-mmap \
> +    python-textutils \
> +    python-unixadmin \
> +    python-subprocess \
> +    python-netclient \
> +    python-audio \
> +    python-lang \
> +    python-debugger \
> +    python-pprint \
> +    python-resource \
> +    python-zlib \
> +    python-compression \
> +    python-mime \
> +"
> +
> +RDEPENDS_task-poky-lsb-graphic-add = "\
> +    libqtcore4 \
> +    libqtgui4 \
> +    libqtsql4 \
> +    libqtsvg4 \
> +    libqtxml4 \
> +    libqtnetwork4 \
> +    libqtopengl4 \
> +    libxt \
> +    libxxf86vm \
> +    libdrm \
> +    mesa-dri \
> +    libglu \
> +    libxi \
> +    libxtst \
> +    qt4-plugin-sqldriver-sqlite \
> +"
> +
> +
> +RDEPENDS_task-poky-lsb-runtime-add = "\
> +    ldd \
> +    pam-plugin-wheel \
> +    e2fsprogs-mke2fs \
> +    eglibc-localedata-posix \
> +    mkfontdir \
> +    liburi-perl \
> +    libxml-parser-perl \
> +    libxml-perl \
> +"


