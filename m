Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F903E006D7
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 06:04:58 -0800 (PST)
Received: from mail-pb0-f71.google.com ([209.85.160.71])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 17 Jan 2013 06:04:55 -0800
Received: by mail-pb0-f71.google.com with SMTP id wz17so2971540pbc.10
	for <poky@yoctoproject.org>; Thu, 17 Jan 2013 06:04:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=X8UA2yP1UrA08SqlJzEGi6BdEVCJCcnOu2yUudnMiS8=;
	b=O8rn4qSqCgAUSf61MAI0IKyULE1dHzfE/Cuwlpoliz365LDoPrnrrW+nW4rY5bNTrO
	8vGu5l5leaCCJxzC8r8iYwbDB5SqrbD0wH9RRO4ynNlekUGkON0OWiHpPsVvNppyrqHU
	Zfh4ygz/KQR2zg+c0TpA4idth6/BooXcBywsOs80Xc2pQR/y2d4Hits01BIfu5H1L8pG
	KnsU3QDEi27OPfVeypvTi02Cj4wYAqEdRvqG1Y5NVq9hmvwzkrLhreTR0wpA4ONGY1yE
	ylXA5TQnHIm+lDbqrFpOt1kFlXQx4gy7PzhgKjBDiQ71KXin8/0CYjUpmBIUYhQw95K7
	wqPg==
X-Received: by 10.68.134.228 with SMTP id pn4mr13781561pbb.31.1358431494481;
	Thu, 17 Jan 2013 06:04:54 -0800 (PST)
X-Received: by 10.68.134.228 with SMTP id pn4mr13781539pbb.31.1358431494332;
	Thu, 17 Jan 2013 06:04:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.66.253.233 with HTTP; Thu, 17 Jan 2013 06:04:34 -0800 (PST)
In-Reply-To: <50F80088.4090809@simpleaudio.com>
References: <50F7CFDA.6090505@simpleaudio.com>
	<CAJTo0Lay83xOxnhUAUmb8bS+igk=woeMCboXR+S+VeTHYY61Fg@mail.gmail.com>
	<50F80088.4090809@simpleaudio.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 17 Jan 2013 14:04:34 +0000
Message-ID: <CAJTo0LYFnrkk-WaMzAWARQP0jTZqt08mFdu7Jk08bED+m==1HQ@mail.gmail.com>
To: Wayne Tams <wayne.tams@simpleaudio.com>
X-Gm-Message-State: ALoCoQlM0AYeiYJNeIfwFiZKmCt9DU9o+APVownZUPqdd9EW3Yxsjq4SL6acK5s85rurDaFfJ3bfk6z0/d40nWYJ3cVafN93I09ocTFpaxbADo1MlxLu1Ans+SNXxg6CMt6zNWJahp1f+q2RwvKhT/YtFskH9GPbWg==
Cc: poky@yoctoproject.org
Subject: Re: gst-rtsp not building
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
X-List-Received-Date: Thu, 17 Jan 2013 14:04:59 -0000
Content-Type: text/plain; charset=UTF-8

On 17 January 2013 13:45, Wayne Tams <wayne.tams@simpleaudio.com> wrote:
> Some extra debug information here from insane.bbclass.
>
> NOTE: Checking autotools environment for common misconfiguration
> cc1: warning: include location "/usr/include/python2.6" is unsafe for
> cross-compilation [-Wpoison-system-directories]
>
> ERROR: This autoconf log indicates errors, it looked at host include and/or
> library paths while determining system capabilities.

Oh, if it's doing python stuff, try adding inherit pythonnative.

Ross

