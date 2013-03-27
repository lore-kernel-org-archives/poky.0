Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F17C2E0146E
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 08:05:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2RFFKhq028961; Wed, 27 Mar 2013 15:15:20 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id GqZyNhj+k+oY; Wed, 27 Mar 2013 15:15:20 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r2RFFEFr028950
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Wed, 27 Mar 2013 15:15:17 GMT
Message-ID: <1364396712.28471.20.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Larson <clarson@kergoth.com>
Date: Wed, 27 Mar 2013 15:05:12 +0000
In-Reply-To: <CABcZANn9haGTBdmo1F=vwQw5G6kqGBdPKRaocDhmVc4uFp-ikQ@mail.gmail.com>
References: <1364392789-24104-1-git-send-email-ross.burton@intel.com>
	<CABcZANn9haGTBdmo1F=vwQw5G6kqGBdPKRaocDhmVc4uFp-ikQ@mail.gmail.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: enable Wayland DISTRO_FEATURE
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
X-List-Received-Date: Wed, 27 Mar 2013 15:05:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-03-27 at 07:58 -0700, Chris Larson wrote:
> 
> On Wed, Mar 27, 2013 at 6:59 AM, Ross Burton <ross.burton@intel.com>
> wrote:
>         Without the Wayland feature you don't get the Wayland EGL
>         platform built into
>         Mesa, so Poky can't be used to test Wayland or Weston properly
>         out of the box.
>         
>         Signed-off-by: Ross Burton <ross.burton@intel.com>
>         ---
>          meta-yocto/conf/distro/poky.conf |    2 +-
>          1 file changed, 1 insertion(+), 1 deletion(-)
>         
>         diff --git a/meta-yocto/conf/distro/poky.conf
>         b/meta-yocto/conf/distro/poky.conf
>         index f146f5f..afe328b 100644
>         --- a/meta-yocto/conf/distro/poky.conf
>         +++ b/meta-yocto/conf/distro/poky.conf
>         @@ -11,7 +11,7 @@ TARGET_VENDOR = "-poky"
>          LOCALCONF_VERSION = "1"
>          LAYER_CONF_VERSION ?= "6"
>         
>         -DISTRO_FEATURES_append = " largefile opengl multiarch"
>         +DISTRO_FEATURES_append = " largefile opengl multiarch
>         wayland"
> 
> This reminds me, could we make this overridable? There are distros
> which are based on poky, but might want to tweak the supported
> features. Perhaps these features could be shoved into a separate
> variable and _append that, or just use +=.

Sounds fine, please send a patch. There was some good reason for using
_append iirc.

Cheers,

Richard



