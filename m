Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BD1E002E9
	for <poky@yoctoproject.org>; Tue, 30 Jul 2013 13:39:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Jul 2013 13:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,781,1367996400"; d="scan'208";a="339206331"
Received: from unknown (HELO [10.255.14.47]) ([10.255.14.47])
	by azsmga001.ch.intel.com with ESMTP; 30 Jul 2013 13:39:21 -0700
Message-ID: <51F82479.6050909@linux.intel.com>
Date: Tue, 30 Jul 2013 13:39:21 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Eric Nelson <eric.nelson@boundarydevices.com>
References: <1375216507-11576-1-git-send-email-eric.nelson@boundarydevices.com>
In-Reply-To: <1375216507-11576-1-git-send-email-eric.nelson@boundarydevices.com>
Cc: poky@yoctoproject.org, otavio@ossystems.com.br
Subject: Re: [PATCH] gst-plugins-gl: add explicit dependency on libpng
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
X-List-Received-Date: Tue, 30 Jul 2013 20:39:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


As this in meta, which is really part of openembedded-core, please send 
it to openembedded-core@list.openembedded.org.

Thanks for the patch

Sau!

On 07/30/2013 01:35 PM, Eric Nelson wrote:
> Signed-off-by: Eric Nelson <eric.nelson@boundarydevices.com>
> ---
>   meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
> index a6c74fb..213e799 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-gl_0.10.3.bb
> @@ -8,7 +8,7 @@ SRC_URI[sha256sum] = "48340b6a4b8abce16344a7bc33e74a94fdcce4f57ef6342cdf2f941c42
>
>   SRC_URI += " file://0001-conditional-gl-framebuffer-undefined-use.patch"
>
> -DEPENDS += "gst-plugins-base virtual/libgles2 virtual/egl jpeg"
> +DEPENDS += "gst-plugins-base virtual/libgles2 virtual/egl jpeg libpng"
>
>   inherit gettext gconf
>
>

