Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9FCB4C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 15:37:48 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so5264657iwn.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 13:37:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=ijsgkRo0kTc9lXpYABrNL2rhm08wWTCRIExkx/yeYMo=;
	b=XJgsQZfdfaMh9zv9vucdO6gfuqSZ7QlaV+dQWbGjtm2JJ6NIQ7ZxC/845vSJRkWTaf
	2O8S4SaKE3B2Avo1o9h9rWYJCzd7KRYRGlnRIqUccoMMDZwPpKwm64GXYdBCGsb3+m42
	dzj3510bgpWUUkhleFsb3FuSPMnTHq8d/6mhU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Bcp7/29EBON/OaPW+CrB4C5Bu0OBNont+G/2BS7L6O0DwHo7mLYgBnwjDOZoWoB07F
	zIrRbANHC5iwL7I+upQz0xrZE9TZJBKmCQxVXDYv0MCnEWcx1yH2u91cxcHY+RHMvkkp
	wxYuVBCrZZgFPhcVX5Xjt45TVvMSGCMCyi1Lg=
MIME-Version: 1.0
Received: by 10.231.12.10 with SMTP id v10mr5935791ibv.171.1292967467481; Tue,
	21 Dec 2010 13:37:47 -0800 (PST)
Received: by 10.231.180.224 with HTTP; Tue, 21 Dec 2010 13:37:47 -0800 (PST)
In-Reply-To: <AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
	<4D1119EA.9010806@linux.intel.com>
	<AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
Date: Tue, 21 Dec 2010 16:37:47 -0500
Message-ID: <AANLkTi=Ypr+KkdnumWb9uwAC7trR5RYgAbbFjf9nbfpi@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] scripts/send-pull-request: Use git send-mail instead of sendmail
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
X-List-Received-Date: Tue, 21 Dec 2010 21:37:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 21, 2010 at 4:32 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Tue, Dec 21, 2010 at 1:19 PM, Darren Hart <dvhart@linux.intel.com> wro=
te:
>> On 12/21/2010 01:39 AM, Khem Raj wrote:
>>>
>>> * usually git send-mail is setup by people using git
>>> =A0 so use git send-mail to post patches for pull requests
>>> =A0 There is how to setup git send-email
>>> =A0 see section "Set up git"
>>>
>>> http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbe=
dded
>>
>> I didn't use git-send-email for this script because of a few complicatio=
ns
>> with it. First, when using the --compose option, there is no way to pass=
 it
>> a file for the cover-letter. Second, it doesn't scan the entire patch se=
ries
>> for recipients and will send each mail in the thread to different recipi=
ents
>> - including the cover letter, which I find simply obnoxious. These preve=
nt
>> it from being used as a single command with a refspec for the range of
>> patches. If you aren't going to do this, then using it in a loop is
>> effectively the same as using sendmail. If you're using git-send-email, =
then
>> you already have local sendmail setup.
>
> No I dont. I use smtpserver with git send-email
>
>>
>> Other than using your local git mail aliases, I don't see any advantage =
to
>> using git-send-email.
>
> if using git then its easier for people to use git commands and I
> think git email setup
> is easier than setting up sendmail.
>
> If you're using the auto-harvest feature, you had to
>> dig up the proper email addresses anyway. It does however add a second
>> configuration step - the [sendemail] section. I do have this setup mysel=
f,
>> but enough people trip over just getting a local sendmail configuration
>> working that adding git sendemail to that just doesn't seem worth it to =
me.
>>
>> Is there an advantage to git sendemail that I am overlooking?
>
> I think git send-email sends the patches the expected way and one does no=
t
> have to worry about chopping etc. that the script currently does.

I don't see this as a one vs the other sort of thing. I've been sending
patches to the lists using Darren's front end, but then using git send-emai=
l
to actually transmit the patches (since I don't have sendmail on all
my boxes).

So I'd suggest simply making the sending configurable, since clobbering
one with the other doesn't meet everyone's needs.

Cheers,

Bruce

>
>>
>> Thanks,
>>
>> Darren Hart
>>
>>>
>>> Signed-off-by: Khem Raj<raj.khem@gmail.com>
>>> ---
>>> =A0scripts/send-pull-request | =A0 19 ++++++++-----------
>>> =A01 files changed, 8 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
>>> index 0576a5d..2f0b90d 100755
>>> --- a/scripts/send-pull-request
>>> +++ b/scripts/send-pull-request
>>> @@ -12,8 +12,8 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p
>>> pull-dir
>>> =A0EOM
>>> =A0}
>>>
>>> -# Collect To and CC addresses from the patch files if they exist
>>> -# $1: Which header to add the recipients to, "TO" or "CC"
>>> +# Collect To, From and CC addresses from the patch files if they exist
>>> +# $1: Which header to add the recipients to, "TO", "FROM" or "CC"
>>> =A0# $2: The regex to match and strip from the line with email addresse=
s
>>> =A0harvest_recipients()
>>> =A0{
>>> @@ -27,6 +27,8 @@ harvest_recipients()
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -z "$TO" ]; then TO=3D$EMAIL; e=
lse TO=3D"$TO,$EMAIL"; fi
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0elif [ "$TO_CC" =3D=3D "CC" ]&& =A0[ "${CC/$=
EMAIL/}" =3D=3D "$CC" ]&&
>>> =A0[ -n "$EMAIL" ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -z "$CC" ]; then CC=3D$EMAIL; e=
lse CC=3D"$CC,$EMAIL"; fi
>>> + =A0 =A0 =A0 =A0 =A0 =A0elif [ "$TO_CC" =3D=3D "FROM" ]&& =A0[ "${FROM=
/$EMAIL/}" =3D=3D "$FROM"
>>> ]&& =A0[ -n "$EMAIL" ]; then
>>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if [ -z "$FROM" ]; then FROM=3D$EMAIL;=
 fi
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0fi
>>> =A0 =A0 =A0 =A0 =A0done
>>> =A0 =A0 =A0done
>>> @@ -85,6 +87,7 @@ done
>>> =A0# etc. (*-by) will be added to CC.
>>> =A0if [ $AUTO -eq 1 ]; then
>>> =A0 =A0 =A0harvest_recipients TO "^[Tt][Oo]: *"
>>> + =A0 =A0harvest_recipients FROM "^[Ff][rR][oO][mM]: *"
>>> =A0 =A0 =A0harvest_recipients CC "^[Cc][Cc]: *"
>>> =A0 =A0 =A0harvest_recipients CC "^.*-[Bb][Yy]: *"
>>> =A0fi
>>> @@ -112,20 +115,14 @@ read cont
>>> =A0if [ "$cont" =3D=3D "y" ] || [ "$cont" =3D=3D "Y" ]; then
>>> =A0 =A0 =A0ERROR=3D0
>>> =A0 =A0 =A0for PATCH in $PDIR/*patch; do
>>> - =A0 =A0 =A0 =A0# Insert To and CC headers via formail to keep them se=
parate and
>>> - =A0 =A0 =A0 =A0# appending them to the sendmail command as -- $TO $CC=
 has proven
>>> - =A0 =A0 =A0 =A0# to be an exercise in futility.
>>> - =A0 =A0 =A0 =A0#
>>> - =A0 =A0 =A0 =A0# Use tail to remove the email envelope from git or fo=
rmail as
>>> - =A0 =A0 =A0 =A0# msmtp (sendmail) would choke on them.
>>> - =A0 =A0 =A0 =A0cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail =
-n +2 |
>>> sendmail -t
>>> + =A0 =A0 =A0 =A0# Insert To and CC headers
>>> + =A0 =A0 =A0 git send-email --to=3D"$TO" --cc=3D"$CC" --from=3D"$FROM"=
 --confirm=3Dauto
>>> $PATCH
>>> =A0 =A0 =A0 =A0 =A0if [ $? -eq 1 ]; then
>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0ERROR=3D1
>>> =A0 =A0 =A0 =A0 =A0fi
>>> =A0 =A0 =A0done
>>> =A0 =A0 =A0if [ $ERROR -eq 1 ]; then
>>> - =A0 =A0 =A0 =A0echo "ERROR: sendmail failed to send one or more messa=
ges. Check
>>> your"
>>> - =A0 =A0 =A0 =A0echo " =A0 =A0 =A0 sendmail log for details."
>>> + =A0 =A0 =A0 =A0echo "ERROR: git send-mail failed to send one or more =
messages."
>>> =A0 =A0 =A0fi
>>> =A0else
>>> =A0 =A0 =A0echo "Send aborted."
>>
>>
>> --
>> Darren Hart
>> Yocto Linux Kernel
>>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

