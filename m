Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E45EE016A3
	for <poky@yoctoproject.org>; Tue,  8 Oct 2013 13:09:41 -0700 (PDT)
Received: by mail-ee0-f49.google.com with SMTP id d41so4259504eek.36
	for <poky@yoctoproject.org>; Tue, 08 Oct 2013 13:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5ZS0xtC/pPNJg6m7T1xrn8Lls4qpgmPEL1eYLOJ3LDg=;
	b=F5bB2zIlKragNDxWbSRg3/w7k23jglTY8EwKjrzkZSFwpOGC9PMqvQVuJJityu3Za/
	U7ffk/TEE/pypc3j11KkbeiivuOK4mazrMfAZ6yKmiPp00JrTFNhF0TSRACGdBQEvXxM
	HDAL9tCkSpWP4M9RmMvz6N80BRcJDQEEaiGO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=5ZS0xtC/pPNJg6m7T1xrn8Lls4qpgmPEL1eYLOJ3LDg=;
	b=bhvl4LTkF4Akn8cZbXR2oMyq2xTt376z1vnQu5P8mHZQj3y+jj/tcdph2uQRVehiWo
	CcfXqhxksec6y0lsvQxRiLyD5gMhE6aCq0SoqGSufCVmXzj6v5CnV/DbM2mTTaBvdVhU
	RzjXIbjNCZHqcIErjpGVILne8sEZ6EhQFAYihToQmKD7g54auITPFFRQtvj+55VljiOz
	NThtMvalFqoxzCexZQgwuMOtCdCCECHV7ny8n4bFmtCfjUBXYq4FbJfChj/Kl3wnUqVA
	WkdA5JrxU8yDJdRjmU6CJX3F10p52ntsZ9Af5uF8ZyuV37E+eAhdXQ3p/GPTLgOE7LtO
	/XPw==
X-Gm-Message-State: ALoCoQkN4v+lSsnq5d2tEdXbM4iaXWUbOq+s7tWqpDT1TL9f41o6BbXxlKmSmLkW+oZLPqdWNPnO
MIME-Version: 1.0
X-Received: by 10.15.51.74 with SMTP id m50mr5171979eew.58.1381262979906; Tue,
	08 Oct 2013 13:09:39 -0700 (PDT)
Received: by 10.223.131.3 with HTTP; Tue, 8 Oct 2013 13:09:39 -0700 (PDT)
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47B39@IAD2MBX05.mex02.mlsrvr.com>
References: <7BDD69127112414F90CF3FED4711BF150D15A47B39@IAD2MBX05.mex02.mlsrvr.com>
Date: Tue, 8 Oct 2013 13:09:39 -0700
Message-ID: <CA+gsK-qiBVcDiin3q0fSbGJRYScr4XRnv4BX7X9Nc2JyhuAN9A@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Michael Davis <mdavis@planetaryresources.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Best supported package manager?
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
X-List-Received-Date: Tue, 08 Oct 2013 20:09:42 -0000
Content-Type: multipart/alternative; boundary=001a1132f142426d8604e8405933

--001a1132f142426d8604e8405933
Content-Type: text/plain; charset=ISO-8859-1

> Which package manager (ipk, rpm, deb) is best supported currently in
poky?  I am wondering which manager is the most tested and stable?

RPM is the default package manager. I would expect that it has gotten the
most mileage so far because of that. All of them are tested with
autobuilder. IPK is probably the next commonly used one since popular for
embedded systems for its leightweight and smaller footprint design. You can
have YP build for any combination of the package managers at the same time.
The builds just take longer. I recommend starting with RPM and when your
system boots try out the other ones if you need to.

Rudi

--001a1132f142426d8604e8405933
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra">&gt;=A0<span style=3D"font-=
family:arial,sans-serif;font-size:13.333333969116211px">Which package manag=
er (ipk, rpm, deb) is best supported currently in poky?=A0 I am wondering w=
hich manager is the most tested and stable?</span></div>
<div class=3D"gmail_extra"><span style=3D"font-family:arial,sans-serif;font=
-size:13.333333969116211px"><br></span></div><div class=3D"gmail_extra"><fo=
nt face=3D"arial, sans-serif">RPM is the default package manager. I would e=
xpect that it has gotten the most mileage so far because of that. All of th=
em are tested with autobuilder. IPK is probably the next commonly used one =
since popular for embedded systems for its leightweight and smaller footpri=
nt design. You can have YP build for any combination of the package manager=
s at the same time. The builds just take longer. I recommend starting with =
RPM and when your system boots try out the other ones if you need to.</font=
></div>
<div class=3D"gmail_extra"><font face=3D"arial, sans-serif"><br></font></di=
v><div class=3D"gmail_extra"><font face=3D"arial, sans-serif">Rudi</font></=
div></div>

--001a1132f142426d8604e8405933--
