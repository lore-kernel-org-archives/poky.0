Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15DBF4C800A4
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 12:18:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws18 with SMTP id 18so3043641vws.35
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 10:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=JxSGDDtwNar1WfDWYb7gVn9J7lwQK/wYHGgIM2JwZ7Y=;
	b=M5CxgEad+XlUFzfCnjS345cjUFHrwRfz1ObDtaD3eW25d0wHwAnc/WDQl16264u+2X
	iyjMDzAYlyOCKLRgVt7EDQFT1XgfidLtCo4l6CCVe8cvr5wJ5eOFEA8tWokG/ZUQNsuf
	Typbwvhl3UYLJImIApOVMiV5KevzFM3oMTZFA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=OAfu4HcLm4+NGf1GEwBkvKTPpCSJW0qIKTPwzhmTj8Y3Az32AIq1oCsjWVTAgts/6+
	TNqpFLYv/rpNgiUIE/Vvb9ZjerYr/bTfI6YTa1GwljMDbHchmukMbU6uz3vBsWRFeeuR
	LuByIJDZ+1bMHm1qwzOAik76peszLYiHNTq5c=
MIME-Version: 1.0
Received: by 10.220.195.71 with SMTP id eb7mr4326657vcb.203.1297102711394;
	Mon, 07 Feb 2011 10:18:31 -0800 (PST)
Received: by 10.220.190.75 with HTTP; Mon, 7 Feb 2011 10:18:31 -0800 (PST)
In-Reply-To: <AANLkTik=PJZn7tA2zYyJ3Y0vW=-umQ7nCWb6ov6vqZVR@mail.gmail.com>
References: <4D4F562D.1090801@linux.intel.com>
	<AANLkTik=PJZn7tA2zYyJ3Y0vW=-umQ7nCWb6ov6vqZVR@mail.gmail.com>
Date: Mon, 7 Feb 2011 13:18:31 -0500
Message-ID: <AANLkTi=W00-2JesUPcJ9mgpLTfPMtiU6QJqh0+vGp4yb@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: lttng-ust failure on QemuPPC
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
X-List-Received-Date: Mon, 07 Feb 2011 18:18:32 -0000
X-Groupsio-MsgNum: 3418
Content-Type: multipart/mixed; boundary=90e6ba53b448599341049bb5427c

--90e6ba53b448599341049bb5427c
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 6, 2011 at 10:52 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Sun, Feb 6, 2011 at 9:17 PM, Saul Wold <sgw@linux.intel.com> wrote:
>>
>> Bruce, Darren:
>>
>> Can you take a look at the failure in the qemuppc build against
>> the lttng-ust.
>>
>> Looks like the definitions for CLOCK_TRACE and CLOCK_TRACE_FREQ are not
>> available for ppc? =A0Is this a package that should not be built for PPC=
?
>
> Hmmm, not much information here, is this logged somewhere that
> covers basic triage ?
>
> Has the package changed ? Was this building before and regressed ?
>
> lttng ust is supposed to work for powerpc, but from a look at the source,
> include/ust/clock.h looks wrong for powerpc, since the definitions you
> mention are x86 only, but then used in an unprotected function.
>
> commit 9c6bb08180ab0a65bbf3d47247a9d36e257fa44a in the lttng ust
> tree looks to have made the change on January 12th. Which leads me
> back to my 'was this building before' question .. I assume it was, which
> then leads me to 'did this change' .. I see we did bump the revision
> in commit e8f2bfcfdaee3cd5cbdb4cf10d48c91bfa741f00 9 days ago.
>
> commit 9c6bb08180ab0a65bbf3d47247a9d36e257fa44a in the lttng ust
> tree mentions:
>
> =A0 =A0At runtime, UST checks if the LTTng clock source is available
> =A0 =A0If not, CLOCK_MONOTONIC is the default fallback.
>
> =A0 =A0This makes UST use the LTTng kernel clock source. With this
> =A0 =A0clock support, LTTng and UST traces are perfectly synchronize.
> =A0 =A0Traces from these two tracer can be merged for analysis.
>
> =A0 =A0LTTng 0.240 or higher is needed for this new clock source.
>
> That looks like a version mismatch. It definitely is for the 2.6.34 kerne=
l,
> and until my latest pull request is merged for the 2.6.37 kernel, its a
> mismatch there as well.
>
> A quick check with an updated 2.6.37 kernel shows that the error is
> there regardless. So this just looks like a straight up issue with
> the updated lttng ust.


For what it is worth, I slapped together a compile tested only patch
for lttng ust 0.11.

It definitely was the update of ust that caused this problem, and this
fixes things (somewhat). Worth double checking the upstream repo
for a better/more complete fix, I didn't have time to do another cjeck
at the moment.

Cheers,

Bruce

>
> Hope that helps,
>
> Bruce
>
>
>
>>
>> Thanks
>> =A0 =A0Sau!
>>
>> Saul Wold
>> Yocto Component Wrangler @ Intel
>> Yocto Project / Poky Build System
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

--90e6ba53b448599341049bb5427c
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-ust-ifdef-CLOCK_TRACE-and-CLOCK_TRACE_FREQ-for-power.patch"
Content-Disposition: attachment; 
	filename="0001-ust-ifdef-CLOCK_TRACE-and-CLOCK_TRACE_FREQ-for-power.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gjvpg99z0

RnJvbSA5ZGYxMTcyMTAwY2ViNWQ2NWQ5MzUzMTM5OWE2ZTE1ZDE2YTczZmE2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbT4KRGF0ZTogTW9uLCA3IEZlYiAyMDExIDEzOjE3OjQ3IC0wNTAwClN1YmplY3Q6IFtQ
QVRDSF0gdXN0OiAjaWZkZWYgQ0xPQ0tfVFJBQ0UgYW5kIENMT0NLX1RSQUNFX0ZSRVEgZm9yIHBv
d2VycGMgYnVpbGRzCgpDTE9DS19UUkFDRSBhbmQgQ0xPQ0tfVFJBQ0VfRlJFUSBhcmUgaW50cm9k
dWNlZCBmb3IgeDg2IGFuZCB4ODYtNjQKYnV0IGFyZSB1c2VkIGluIG5vbiAjaWZkZWYnZCBjb2Rl
IHNlY3Rpb25zLiBUaGlzIHBhdGNoIGRvZXMgbm90CmF0dGVtcHQgdG8gZXh0ZW5kIHN1cHBvcnQg
dG8gcG93ZXJwYyBmb3IgdGhvc2UgY2xvY2tzLCBidXQgaW5zdGVhZApmaXhlcyBjb21waWxpYXRp
b24gZXJyb3JzIGFuZCBtYWtlcyBwb3dlcnBjIHVzZSBDTE9DS19NT05PVE9OSUMgYXMKdGhlIGZh
bGxiYWNrLgoKQ29tcGlsZSB0ZXN0ZWQgb25seS4KClNpZ25lZC1vZmYtYnk6IEJydWNlIEFzaGZp
ZWxkIDxicnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tPgotLS0KIGluY2x1ZGUvdXN0L2Nsb2Nr
LmggfCAgICAyICsrCiBsaWJ1c3QvdHJhY2VjdGwuYyAgIHwgICAgNCArKysrCiAyIGZpbGVzIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNs
dWRlL3VzdC9jbG9jay5oIGIvaW5jbHVkZS91c3QvY2xvY2suaAppbmRleCAwNDc4NWZjLi4zMDZj
ZDdjIDEwMDY0NAotLS0gYS9pbmNsdWRlL3VzdC9jbG9jay5oCisrKyBiL2luY2x1ZGUvdXN0L2Ns
b2NrLmgKQEAgLTEwOCwxMCArMTA4LDEyIEBAIHN0YXRpYyBfX2lubGluZV9fIHU2NCB0cmFjZV9j
bG9ja19mcmVxdWVuY3kodm9pZCkKIAlzdHJ1Y3QgdGltZXNwZWMgdHM7CiAJdW5pb24gbHR0bmdf
dGltZXNwZWMgKmx0cyA9ICh1bmlvbiBsdHRuZ190aW1lc3BlYyAqKSAmdHM7CiAKKyNpZiBfX2kz
ODZfXyB8fCBfX3g4Nl82NF9fCiAJaWYgKGxpa2VseSh1c3RfY2xvY2tfc291cmNlID09IENMT0NL
X1RSQUNFKSkgewogCQljbG9ja19nZXR0aW1lKENMT0NLX1RSQUNFX0ZSRVEsICZ0cyk7CiAJCXJl
dHVybiBsdHMtPmx0dG5nX3RzOwogCX0KKyNlbmRpZgogCXJldHVybiAxMDAwMDAwMDAwTEw7CiB9
CiAKZGlmZiAtLWdpdCBhL2xpYnVzdC90cmFjZWN0bC5jIGIvbGlidXN0L3RyYWNlY3RsLmMKaW5k
ZXggZTg3N2U2Mi4uMmUzOWJkYiAxMDA2NDQKLS0tIGEvbGlidXN0L3RyYWNlY3RsLmMKKysrIGIv
bGlidXN0L3RyYWNlY3RsLmMKQEAgLTEyNjksMTEgKzEyNjksMTUgQEAgc3RhdGljIHZvaWQgX19h
dHRyaWJ1dGVfXygoY29uc3RydWN0b3IpKSBpbml0KCkKIAkvKiBHZXQgY2xvY2sgdGhlIGNsb2Nr
IHNvdXJjZSB0eXBlICovCiAKIAkvKiBEZWZhdWx0IGNsb2NrIHNvdXJjZSAqLworI2lmIF9faTM4
Nl9fIHx8IF9feDg2XzY0X18KIAl1c3RfY2xvY2tfc291cmNlID0gQ0xPQ0tfVFJBQ0U7CiAJaWYg
KGNsb2NrX2dldHRpbWUodXN0X2Nsb2NrX3NvdXJjZSwgJnRzKSAhPSAwKSB7CiAJCXVzdF9jbG9j
a19zb3VyY2UgPSBDTE9DS19NT05PVE9OSUM7CiAJCURCRygiVVNUIHRyYWNlcyB3aWxsIG5vdCBi
ZSBzeW5jaHJvbml6ZWQgd2l0aCBMVFRuZyB0cmFjZXMiKTsKIAl9CisjZWxzZQorCXVzdF9jbG9j
a19zb3VyY2UgPSBDTE9DS19NT05PVE9OSUM7CisjZW5kaWYKIAogCWF1dG9wcm9iZV92YWwgPSBn
ZXRlbnYoIlVTVF9BVVRPUFJPQkUiKTsKIAlpZiAoYXV0b3Byb2JlX3ZhbCkgewotLSAKMS43LjAu
NAoK

--90e6ba53b448599341049bb5427c--
