Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6A454C811FD
	for <poky@yoctoproject.org>; Fri, 13 May 2011 12:14:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 May 2011 10:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; d="scan'208";a="746908527"
Received: from unknown (HELO [10.7.199.58]) ([10.7.199.58])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2011 10:14:27 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 13 May 2011 10:14:27 -0700
In-Reply-To: <8e2a54d05b21f33bd2249bab21343c25170ffc83.1305295079.git.paul.eggleton@linux.intel.com>
References: <cover.1305295079.git.paul.eggleton@linux.intel.com>
	<8e2a54d05b21f33bd2249bab21343c25170ffc83.1305295079.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305306867.2023.21.camel@scimitar>
Mime-Version: 1.0
Subject: Re: [PATCH 3/3] qt4: split out SQL driver config flags to QT_SQL_DRIVER_FLAGS
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
X-List-Received-Date: Fri, 13 May 2011 17:14:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-13 at 14:59 +0100, Paul Eggleton wrote:
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> This allows meta-oe to override these options easily in order to enable more
> SQL driver plugins.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>

Cool!
Reviewed-by: Joshua Lock <josh@linux.intel.com>

> ---
>  meta/recipes-qt/qt4/qt4.inc |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-qt/qt4/qt4.inc b/meta/recipes-qt/qt4/qt4.inc
> index b86f89f..7e15b61 100644
> --- a/meta/recipes-qt/qt4/qt4.inc
> +++ b/meta/recipes-qt/qt4/qt4.inc
> @@ -9,11 +9,13 @@ QT_ENDIAN = "${@qt_endian(d)}"
>  QT_DISTRO_FLAGS ?= "-no-accessibility -no-sm"
>  QT_DISTRO_FLAGS_linuxstdbase = "-sm"
>  
> +QT_SQL_DRIVER_FLAGS ?= "-no-sql-ibase -no-sql-mysql -no-sql-psql -no-sql-odbc -plugin-sql-sqlite"
> +
>  QT_CONFIG_FLAGS += "-release -no-cups -reduce-relocations \
>                      -shared -no-nas-sound -no-nis \
>                      -qt-gif -system-libjpeg -system-libpng -system-zlib \
> -                    -no-sql-ibase -no-sql-mysql -no-sql-psql -no-sql-odbc -plugin-sql-sqlite \
>                      -no-pch -qdbus -stl -glib -phonon -webkit \
> +                    ${QT_SQL_DRIVER_FLAGS} \
>                      ${QT_DISTRO_FLAGS} "
>  
>  EXTRA_OEMAKE = "-e"

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


