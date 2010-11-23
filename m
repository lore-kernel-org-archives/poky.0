Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id A99D24C80052
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 10:09:35 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PKvR1-0001c8-2e from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Tue, 23 Nov 2010 08:09:35 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Tue, 23 Nov 2010 08:09:34 -0800
Received: from [172.30.80.10] ([172.30.80.10]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Tue, 23 Nov 2010 09:09:34 -0700
Message-ID: <4CEBE73A.5050502@mentor.com>
Date: Tue, 23 Nov 2010 09:09:30 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <0d30dc$k8jjru@orsmga001.jf.intel.com>
In-Reply-To: <0d30dc$k8jjru@orsmga001.jf.intel.com>
X-OriginalArrivalTime: 23 Nov 2010 16:09:34.0236 (UTC)
	FILETIME=[D1A475C0:01CB8B28]
Subject: Re: [PATCH 5/5] poky.conf: whitelist shell variables which are	volatile to build system
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
X-List-Received-Date: Tue, 23 Nov 2010 16:09:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 11:14 PM, Kevin Tian wrote:
> Bitbake preserves a list of good shell variables which are required by some
> shell based tasks. When scheduling a new shell task, bitbake always appends
> all those shell variables which become a trouble for task checksum, because
> most of those variables (GNOME_KEYRING_PID, XDG_SESSION_COOKIE, etc.) are
> specific to the build system and desktop session.
>
> Previously I came up an approach to explicitly seperate external shell variables
> from the ones defined by bitbake, which however ends up to be complex.
>
> So here I simply whitelist all preserved shell variables from current definition.
> This should allow wider test on sstate when the better option is under discussion.
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/conf/distro/poky.conf |    3 ++-
>   1 files changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
> index ae13d9a..dd29d9d 100644
> --- a/meta/conf/distro/poky.conf
> +++ b/meta/conf/distro/poky.conf
> @@ -144,4 +144,5 @@ require conf/distro/include/distro_tracking_fields.inc
>   # Setup our hash policy
>   BB_SIGNATURE_HANDLER = "basic"
>   BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
> -BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
> +BB_HASHBASE_WHITELIST = "TMPDIR FILE TIME DATE BBPATH OEROOT DL_DIR SSTATE_DIR THISDIR _"
> +BB_HASHBASE_WHITELIST += "PATH PWD COLORTERM DBUS_SESSION_BUS_ADDRESS DESKTOP_SESSION DESKTOP_STARTUP_ID DISPLAY GNOME_KEYRING_PID GNOME_KEYRING_SOCKET GPG_AGENT_INFO GTK_RC_FILES HOME LANG LOGNAME SESSION_MANAGER SHELL SSH_AUTH_SOCK TERM USER USERNAME XAUTHORITY XDG_DATA_DIRS XDG_SESSION_COOKIE http_proxy ftp_proxy https_proxy all_proxy ALL_PROXY no_proxy SSH_AGENT_PID SSH_AUTH_SOCK GIT_PROXY_COMMAND"

Looking over our signature code you may also need:
FILE_DIRNAME PARALLEL_MAKE MIRRORS PREMIRRORS SSH_TTY SSH_CLIENT 
SSH_CONNECTION SESSION_MANAGER GTK_RC_FILES GREP_OPTIONS
and you have SSH_AUTH_SOCK listed twice (can I suggest splitting this 
into more lines?).

-- 
Tom Rini
Mentor Graphics Corporation

