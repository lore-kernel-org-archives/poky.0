Return-Path: <kubera.samrat@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 852A94C80050
	for <poky@yoctoproject.org>; Tue,  8 Mar 2011 01:24:17 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwd20 with SMTP id 20so529012wwd.11
	for <poky@yoctoproject.org>; Mon, 07 Mar 2011 23:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=mlWAwPYywPMRcRnAcSR1v+/7lw4lOmhIU9DUrPuybtE=;
	b=Woomk5tUaqAsjOk9WRZMXKQgd8gtgErK0YwgRvHjeLC64CcMtwxQEAZ5z7/qlr+4KQ
	QJ4C7m1iim2SLftTzoVtPLGX3cxsqEVfILAoq2vLTGQYuUQxwNORUK0IThGARQB6imVP
	49W56FvK1JI7nhvTz7m0K0fcI3TMyaKCI60FI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Vqdj+IsVGZy1lIZIw9pKV8ldENbO2s0RICBITAiZFpOpjC8UMy5tr+0X0SETpXs/6p
	4RANpWly3CmM5GoZgSN/YRPQ4VU0sHRBXD3KZKFAksM342C3dzrHAlrqOsVR0PuplWvE
	6A3gBYYWBA4N/IBZ2rGIkToJSxqLBRAceJT5c=
MIME-Version: 1.0
Received: by 10.216.168.82 with SMTP id j60mr3148810wel.47.1299569056235; Mon,
	07 Mar 2011 23:24:16 -0800 (PST)
Received: by 10.216.69.83 with HTTP; Mon, 7 Mar 2011 23:24:16 -0800 (PST)
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A3357397C@shsmsx501.ccr.corp.intel.com>
References: <AANLkTi=up7xTGUbD85evMyutLjjqhAsUnfPTjXy+vZkH@mail.gmail.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A3357397C@shsmsx501.ccr.corp.intel.com>
Date: Tue, 8 Mar 2011 12:54:16 +0530
Message-ID: <AANLkTikrREQV18Ku_AofW1muYEhKw0K7YL6cdnRZHLXc@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: error while adding alsa-utils to my recipe
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
X-List-Received-Date: Tue, 08 Mar 2011 07:24:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Dongxiao,
          Thank you for reminding me of including ncurses. But after
including ncurses in Depends, then also the same error. So I added my
ncurses in my recipe before alsa-utils. Then I got the error like
Processing glibc...
| Unable to find package glibc!
| ERROR: Task failed: ('function do_rootfs failed',

Do tell me is my procedure correct or not. and then if it is correct
do provide me solution to remove this error.

On Tue, Mar 8, 2011 at 11:47 AM, Xu, Dongxiao <dongxiao.xu@intel.com> wrote=
:
> Ncurses should provide that library. Did you add 'ncurses' to the alsa-ut=
ils DEPENDS?
>
> You can refer to ${POKYBASE}/meta/recipes-multimedia/alsa/alsa-utils_1.0.=
23.bb as an example.
>
> Alsa-utils 1.0.23 is the current version in poky and the build should wor=
k.
>
> Thanks,
> Dongxiao
>
> kubera samrat wrote:
>> Hi all,
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0While compilation alsa-utils =
1.0.21 I got:
>> checking for form.h... yes checking for new_panel in -lpanelw... no
>> configure: error: panelw library not found.
>> Could you please suggest me a solution.
>>
>> I am using ubunti 10.04 on 64 bit machine
>>
>>
>>

 Thanks and regards
V kubera Samrat

