Return-Path: <semc.2042@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8130BC28B20
	for <webhook@archiver.kernel.org>; Fri, 28 Mar 2025 12:48:06 +0000 (UTC)
Subject: Re: glibc run-built-tests not working as expected when set to 'no'
To: poky@lists.yoctoproject.org
From: "rajmohan r" <semc.2042@gmail.com>
X-Originating-Location: US (136.226.245.34)
X-Originating-Platform: Linux Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Mar 2025 05:48:02 -0700
References: <CANNYZj8=wWszFdsmqzP=pg7s1sT1hgsTR2aEf50n7CWcwvg08A@mail.gmail.com>
In-Reply-To: <CANNYZj8=wWszFdsmqzP=pg7s1sT1hgsTR2aEf50n7CWcwvg08A@mail.gmail.com>
Message-ID: <28798.1743166082327319045@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aeKYvTejLZONq82AMT9b"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 28 Mar 2025 12:48:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13581

--aeKYvTejLZONq82AMT9b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 28, 2025 at 09:22 AM, Alexander Kanavin wrote:

>=20
> On Fri, 28 Mar 2025 at 09:15, rajmohan r via lists.yoctoproject.org
> <semc.2042=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> Attached the patch file
>> (0001-glibc-y2038-tests-add-tests-special-in-run-built-tes.patch),
>> which shall generate only binaries and will not run the binaries.
>> Please review and let me know if you any info to share.
>=20
> Please send the patch with git send-email to openembedded-core mailing
> list. Poky list is the wrong place for it, and patch attachments are
> generally not reviewed, as it is difficult to comment on specific
> content of the patch.
>=20
> Alex

On Fri, Mar 28, 2025 at 09:22 AM, Alexander Kanavin wrote:

>=20
> On Fri, 28 Mar 2025 at 09:15, rajmohan r via lists.yoctoproject.org
> <semc.2042=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> Attached the patch file
>> (0001-glibc-y2038-tests-add-tests-special-in-run-built-tes.patch),
>> which shall generate only binaries and will not run the binaries.
>> Please review and let me know if you any info to share.
>=20
> Please send the patch with git send-email to openembedded-core mailing
> list. Poky list is the wrong place for it, and patch attachments are
> generally not reviewed, as it is difficult to comment on specific
> content of the patch.

My bad. I have send email and the patch detail is here https://lists.openem=
bedded.org/g/openembedded-core/topic/scarthgap_patch/111953097

>=20
>=20
> Alex

--aeKYvTejLZONq82AMT9b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Fri, Mar 28, 2025 at 09:22 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>On Fri, 28 Mar 2025 at 09:15, rajmohan r via lists.yoctoproject=
.org<br />&lt;semc.2042=3Dgmail.com@lists.yoctoproject.org&gt; wrote:<br />
<blockquote>Attached the patch file (0001-glibc-y2038-tests-add-tests-speci=
al-in-run-built-tes.patch),<br />which shall generate only binaries and wil=
l not run the binaries.<br />Please review and let me know if you any info =
to share.</blockquote>
Please send the patch with git send-email to openembedded-core mailing<br /=
>list. Poky list is the wrong place for it, and patch attachments are<br />=
generally not reviewed, as it is difficult to comment on specific<br />cont=
ent of the patch.<br /><br />Alex</blockquote>
</div>
<div>On Fri, Mar 28, 2025 at 09:22 AM, Alexander Kanavin wrote:</div>
<div>
<blockquote>On Fri, 28 Mar 2025 at 09:15, rajmohan r via lists.yoctoproject=
.org<br />&lt;semc.2042=3Dgmail.com@lists.yoctoproject.org&gt; wrote:<br />
<blockquote>Attached the patch file (0001-glibc-y2038-tests-add-tests-speci=
al-in-run-built-tes.patch),<br />which shall generate only binaries and wil=
l not run the binaries.<br />Please review and let me know if you any info =
to share.</blockquote>
Please send the patch with git send-email to openembedded-core mailing<br /=
>list. Poky list is the wrong place for it, and patch attachments are<br />=
generally not reviewed, as it is difficult to comment on specific<br />cont=
ent of the patch.</blockquote>
My bad. I have send email and the patch detail is here <a href=3D"https://l=
ists.openembedded.org/g/openembedded-core/topic/scarthgap_patch/111953097" =
target=3D"_blank" rel=3D"noopener">https://lists.openembedded.org/g/openemb=
edded-core/topic/scarthgap_patch/111953097</a></div>
<div>
<blockquote><br />Alex</blockquote>
</div>

--aeKYvTejLZONq82AMT9b--

