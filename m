Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D5DA64C8007E
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 06:21:34 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ECLWSa009848;
	Mon, 14 Feb 2011 12:21:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09696-03; Mon, 14 Feb 2011 12:21:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1ECLPm8009841
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Feb 2011 12:21:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <cover.1297669560.git.dongxiao.xu@intel.com>
References: <cover.1297669560.git.dongxiao.xu@intel.com>
Date: Mon, 14 Feb 2011 12:21:22 +0000
Message-ID: <1297686082.4945.13.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2 0/2][PULL] Fix Bug 603
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
X-List-Received-Date: Mon, 14 Feb 2011 12:21:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-14 at 15:49 +0800, Dongxiao Xu wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> Hi Saul,
> 
> This pull request fixes [BUGID #603], please help to review and pull.
> 
> Actually there are two bugs inside:
> 
> 1) wpa_supplicant is not launched by default.
> 2) Even if manually launch wpa_supplicant, wifi interface still couldn't be enabled.
> 
> Some points to fix this issue:
> 
> 1) Using new dbus interface in wpa_supplicant: "fi.w1.wpa_supplicant1"
> 2) Enable nl802.11 support in wpa_supplicant.
> 3) Fix the dbus-daemon-launch-helper permission issue.
> 
> Changes from v1:
> Set both CONFIG_CTRL_IFACE_DBUS and CONFIG_CTRL_IFACE_DBUS_NEW to 'y' in wpa_supplicant's configuration file.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: dxu4/bugfix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix
> 
> Thanks,
>     Dongxiao Xu <dongxiao.xu@intel.com>

Merged to master.

Thanks,

Richard


