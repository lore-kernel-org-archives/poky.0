Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2BCC54C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:02:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 10:02:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="863670000"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2010 10:02:02 -0800
Message-ID: <4CF7DF1A.2080702@intel.com>
Date: Thu, 02 Dec 2010 10:02:02 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mei Lei <lei.mei@intel.com>
References: <cover.1290681886.git.lei.mei@intel.com>
In-Reply-To: <cover.1290681886.git.lei.mei@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/20]Add 20 recipes license file MD5sum information
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
X-List-Received-Date: Thu, 02 Dec 2010 18:02:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2010 02:44 AM, Mei Lei wrote:
> This includes 20 recipes license file MD5sum update
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/chksum2
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum2
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (20):
>    mpfr:Add license checksum and update the GPL information
>    perl:Add license checksum to bb file
>    prelink:Add license checksum to bb file
>    python:Add license checksum to bb file
>    python-dbus:Add license checksum to bb file
>    python-imaging:Add license checksum to bb file
>    python-pygobject:Add license checksum and update the GPL information
>    python-pygtk:Add license checksum and update the GPL information
>    python-pyrex:Add license checksum and update the License information
>    python-scons:Add license checksum and update the GPL information
>    quilt:Add license checksum and update the GPL information
>    make:Add license checksum and update the GPL information
>    lsof:Add license checksum to bb file
>    dtc:Add license checksum and add the GPL information
>    libtheora:Add license checksum to bb file
>    libxml-simple-perl:Add license checksum to bb file
>    mc:Add license checksum to bb file
>    qmmp:Add license checksum to bb file
>    base-files:Add license checksum to bb file
>    flex:Add license checksum and add the license information
>
>   meta/recipes-core/base-files/base-files_3.0.14.bb  |    2 +-
>   meta/recipes-devtools/flex/flex_2.5.35.bb          |    3 ++-
>   meta/recipes-devtools/make/make_3.82.bb            |    4 +++-
>   .../perl/libxml-simple-perl_2.18.bb                |    1 +
>   meta/recipes-devtools/perl/perl_5.8.8.bb           |    2 ++
>   meta/recipes-devtools/prelink/prelink_git.bb       |    1 +
>   meta/recipes-devtools/python/python-dbus_0.83.1.bb |    1 +
>   .../python/python-imaging_1.1.7.bb                 |    1 +
>   .../python/python-pygobject_2.21.1.bb              |    3 ++-
>   .../recipes-devtools/python/python-pygtk_2.17.0.bb |    3 ++-
>   meta/recipes-devtools/python/python-pyrex_0.9.9.bb |    3 ++-
>   meta/recipes-devtools/python/python-scons_2.0.1.bb |    3 ++-
>   meta/recipes-devtools/python/python_2.6.6.bb       |    2 +-
>   meta/recipes-devtools/quilt/quilt_0.48.bb          |    3 ++-
>   meta/recipes-extended/lsof/lsof_4.84.bb            |    2 +-
>   meta/recipes-extended/mc/mc_4.7.3.bb               |    1 +
>   meta/recipes-kernel/dtc/dtc_git.bb                 |    4 ++++
>   .../libtheora/libtheora_1.1.1.bb                   |    2 +-
>   meta/recipes-qt/qt-apps/qmmp_0.4.1.bb              |    1 +
>   meta/recipes-support/mpfr/mpfr_3.0.0.bb            |    4 +++-
>   20 files changed, 34 insertions(+), 12 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pull into Master

Thanks
    Sau!


