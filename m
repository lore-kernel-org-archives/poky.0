Return-Path: <kergoth@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C4BC4C80BEF
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 17:59:11 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwb31 with SMTP id 31so5050421wwb.11
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 15:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:sender:received
	:in-reply-to:references:from:date:x-google-sender-auth:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=QWM0fGfQZ57FELjxwPoik0Nn5XR4xwLHIwd4ffJayHY=;
	b=dhADBnMIlS6tLvJJ45ewyk2crLktgl3KH95vorlMt0PtVkruLiaVvVut8VPNnA6R/X
	l9rzHWYnf8zuJ5kzSCnt4d6Zzo7+SpOOtaBbcW1YdSj8mDjP4HR2MAXvgy5WQ+9x1dzw
	eGbBtku060wEG6/SYyvdfbiTEqBOMHXdhNffk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	b=usMBnvh6nTLdAFOQhBRKGSOji88tTjZLMsfkJvUVsbUs0Vo4i2JSbCkfduz/rZf5p+
	zyXaU6uuoDtjUuWcYTm11g4K8ebcLlfm81pWxS8plw14063yLYKecyxOtki371iUD7Nu
	pcjVvFYSFDhRKmeiHu+s/KV4DbuPZEFIzXB0w=
Received: by 10.216.180.6 with SMTP id i6mr1673708wem.57.1292025549813; Fri,
	10 Dec 2010 15:59:09 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.67.67 with HTTP; Fri, 10 Dec 2010 15:58:49 -0800 (PST)
In-Reply-To: <1292024521.14420.99.camel@rex>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
	<1291893846.1554.793.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
	<1291898758.1554.819.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>
	<1292024521.14420.99.camel@rex>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 10 Dec 2010 16:58:49 -0700
X-Google-Sender-Auth: ShzVMmxJoTTKIq1_HwilgGxL3pg
Message-ID: <AANLkTikVWrJd3CCtFOokTh=B2HQRO1v0qZRVGdBr_52O@mail.gmail.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Fri, 10 Dec 2010 23:59:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 10, 2010 at 4:42 PM, Richard Purdie <rpurdie@linux.intel.com> w=
rote:
> On Thu, 2010-12-09 at 22:44 +0800, Xu, Dongxiao wrote:
>> I made the following patch (setVarFlag.patch) to move everything in
>> setVar to setVarFlag, please help to review it.
>>
>> Please note one place that I modified, see the indent of
>> "self._seen_overrides[override].add( var )", I thought it was a bug in
>> original code.
>
> No, its not. Its making sure [override] exists before trying to add var
> to it. It could also be:
>
> if override not in self._seen_overrides:
> =C2=A0 =C2=A0self._seen_overrides[override] =3D set(var)
> else:
> =C2=A0 =C2=A0self._seen_overrides[override].add( var )
>

For master, we can use defaultdict for that sort of thing.  What's
poky's current python version requirement?
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

