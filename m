Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBB9EE00CF4; Tue, 15 Jan 2019 01:34:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 374AFE00CD1
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 01:34:17 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id c2so1499775iom.12
	for <poky@yoctoproject.org>; Tue, 15 Jan 2019 01:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=alVZFScKfqtRF3sMHdf/adopXPhPju9p6IM3OQk0Cd4=;
	b=V9tzBV6b2Mz8d07wUGWimTPWic4VQFdVMFgEGrr5QoV/k8IrOe2uiXZ/waW77jLgPj
	m60aZstdnMEHn3q+iH1YvG8HxrnpOZZi4p26VPDD2sSwOKoOPNs8u1V2C8YNBrY3wq90
	qebT35J9mQC3zO4nYXAPZtK5A6mQs7Hmm+nPYQMgtu54LK/DdHJK1aobq6kMr6CKZ+wh
	frHdVUOhFUYpO2j/MsEG1izrQQtYQd13Fk9lyUF/quoB7GW0/Q6x6XqelOqozbZ4uS2x
	D0I0w6IyTddZRTugYV3142+TazV+2P+iF1wRMDUfC8Ja9HBU92Y0lbAn3MzPema4p7IQ
	EYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=alVZFScKfqtRF3sMHdf/adopXPhPju9p6IM3OQk0Cd4=;
	b=E/nXmnuqDioROkw7PBr/A+csw9iBBKhuLGmmqDzbZG/fsPikVpKw6NeVTCf6qIt/mF
	QRHS5GPZekq8VuqnPqZTplwD3K+Ys8Ia917J9atwDzEd7+JCuGIn2f1wBMcf9nOEqTKo
	gEs1f0pYCc/GaEbONdPdQugl46bRG66gLf5nh0lJE5F2g3jvwc/T3oWyaG/2ZSj54qw6
	jbDIcdyL+3wOn4yq4YfZQSLpxD22h79riWFwGVMABvuwmTg5WNhddAqVBPiB6dLgUVXL
	reIFRLib8eHQO0QNe6CbejMZJmOo2LItBiYdiJb+SkxwviyNY/9sNFBvSvRkPIR5n7AC
	JBkA==
X-Gm-Message-State: AJcUukd93NvCSD6vH09jp0N68EqYOs/BKgYQiSpcvyRthVbkStBwoKA9
	m7YBdBEMcMhg5s6aSXUpOHaklIVY4QYA2fid7PRsgBrF
X-Google-Smtp-Source: ALg8bN6xhBpbHAYrmKaok6t0hrD2XJzwblQvzQ8f5SIJEA+/kcbvPdMQ0Z77dywrO6tvkTIOCUSa5rsf5UPxX2/XopU=
X-Received: by 2002:a6b:f70a:: with SMTP id k10mr1305576iog.270.1547544856648; 
	Tue, 15 Jan 2019 01:34:16 -0800 (PST)
MIME-Version: 1.0
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
	<CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
	<40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
	<725EBE10-0967-4DE2-9116-E3C5EEE4582C@gmail.com>
	<CAJTo0LY90e53Q1yQoqzYdC6V4Vo25eE99j5yeET+pmRAPDDSjA@mail.gmail.com>
	<68FFED83-260C-43D6-949C-E50283EA5BDD@gmail.com>
In-Reply-To: <68FFED83-260C-43D6-949C-E50283EA5BDD@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 09:34:05 +0000
Message-ID: <CAJTo0LYWAT9EcbaNG1rMUk0PCLxWdU4RpwiuOGXsY6D7mWxZSA@mail.gmail.com>
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Tue, 15 Jan 2019 09:34:17 -0000
Content-Type: text/plain; charset="UTF-8"

No problem, thanks!

On Tue, 15 Jan 2019 at 01:09, Jean-Francois Dagenais
<jeff.dagenais@gmail.com> wrote:
>
>
> On Jan 14, 2019, at 19:42, Burton, Ross <ross.burton@intel.com> wrote:
>
> If you're not going to fix this, could you please file a bug in bugzilla.yoctoproject.org so this doesn't get forgotten about?
>
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13141
>
> Sorry I couldn't do more.

