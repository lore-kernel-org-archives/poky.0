Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57F184C800B6
	for <poky@yoctoproject.org>; Wed,  4 May 2011 14:55:53 -0500 (CDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1QHiAq-0005Yg-K2 from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 04 May 2011 12:55:52 -0700
Received: from SVR-ORW-FEM-05.mgc.mentorg.com ([147.34.97.43]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 4 May 2011 12:54:38 -0700
Received: from [172.30.0.24] (147.34.91.1) by svr-orw-fem-05 (147.34.97.43)
	with Microsoft SMTP Server id 14.1.270.1; Wed, 4 May 2011 12:55:52 -0700
Message-ID: <4DC1AF3E.20602@mentor.com>
Date: Wed, 4 May 2011 12:55:42 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1304496956.git.xiaofeng.yan@windriver.com>
	<14d94988bd1dd3fc1707828dac9c738f0325175c.1304496956.git.xiaofeng.yan@windriver.com>
In-Reply-To: <14d94988bd1dd3fc1707828dac9c738f0325175c.1304496956.git.xiaofeng.yan@windriver.com>
X-Enigmail-Version: 1.1.1
X-OriginalArrivalTime: 04 May 2011 19:54:38.0469 (UTC)
	FILETIME=[19B66350:01CC0A95]
Subject: Re: [PATCH 1/1] qt4: Enable qt4 opengl for ppc
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
X-List-Received-Date: Wed, 04 May 2011 19:55:53 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 05/04/2011 04:00 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> Fix [# 1020]
> 
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  meta/recipes-qt/qt4/qt4-x11-free.inc |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-qt/qt4/qt4-x11-free.inc b/meta/recipes-qt/qt4/qt4-x11-free.inc
> index ba08dc8..a711288 100644
> --- a/meta/recipes-qt/qt4/qt4-x11-free.inc
> +++ b/meta/recipes-qt/qt4/qt4-x11-free.inc
> @@ -13,6 +13,7 @@ QT_GLFLAGS_qemux86 = "-opengl"
>  QT_GLFLAGS_emenlow = "-opengl"
>  QT_GLFLAGS_atom-pc = "-opengl"
>  QT_GLFLAGS_qemuppc = "-opengl"
> +QT_GLFLAGS_mpc8315e-rdb = "-opengl"
>  QT_CONFIG_FLAGS += "-no-xinerama -no-xkb ${QT_GLFLAGS}"
>  QT_BASE_NAME ?= "qt4"
>  QT_BASE_LIB  ?= "libqt"

Can we use more generic overrides here?  Otherwise we'll just fail on
the next powerpc board.

-- 
Tom Rini
Mentor Graphics Corporation

