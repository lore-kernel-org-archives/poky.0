Return-Path: <cahoshing@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 842FC4C8008F
	for <poky@yoctoproject.org>; Fri,  6 May 2011 00:31:42 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so1879741pwi.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 22:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=UDgs2JM7aWW7l7LwYKiFpggOa44DxO6vNnYk42R3opw=;
	b=jyUW77bKzX+LK/z55vHRU0ypX3xXIoIzqO+movUdiDkKla+Hy6VweZ3MBQqKk79/dO
	awtjctj9xwemvaOmoFkMtbryOfiYQbaySCkIY2DNxotduflosJAMiaIidqoK/5oxozsr
	0N6gmZiI4bf4nIu/1GtkxZ5FW/Yc4SvlhUXr0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=JnwZbf7aa0UGJ/8ROPAZ0gGQEZITy9XTDBBkgZlKzRiObccTBvqHKuFNNrO0nWRW1m
	y1qkCR1ou14K44q0d6Nqhw5Hl137C/SKl7BHfLmBRMPHvtqhhXLyz3Vy+xrdLC4V2XzC
	HUdxasXwDcR1x5KF6563O66ZOPiPtQSoXOsI4=
MIME-Version: 1.0
Received: by 10.142.83.8 with SMTP id g8mr1688092wfb.146.1304659902030; Thu,
	05 May 2011 22:31:42 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Thu, 5 May 2011 22:31:41 -0700 (PDT)
In-Reply-To: <4DC2B6C8.2010801@windriver.com>
References: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
	<1304604592.17396.122.camel@elmorro>
	<4DC2B6C8.2010801@windriver.com>
Date: Fri, 6 May 2011 11:01:41 +0530
Message-ID: <BANLkTimyrS1LN-mcRBP9RUVASQv-ep6W9g@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, gary@mlbassoc.com,
	tom.zanussi@intel.com
Cc: poky@yoctoproject.org
Subject: Re: Error in pulling cups package
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
X-List-Received-Date: Fri, 06 May 2011 05:31:42 -0000
Content-Type: multipart/alternative; boundary=001636e1f9da0364c604a294ce28

--001636e1f9da0364c604a294ce28
Content-Type: text/plain; charset=ISO-8859-1

Thanks guys a lot,

Gary it worked finaly!!!!!!!!! :-) as said by you I made the changes in
local.conf

Chinmaya

--001636e1f9da0364c604a294ce28
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Thanks guys a lot,<div><br></div><div>Gary it worked finaly!!!!!!!!! :-) as said by you I made the changes in local.conf</div><div><br></div><div>Chinmaya<br><br></div></div>

--001636e1f9da0364c604a294ce28--
