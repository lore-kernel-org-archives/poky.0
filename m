Return-Path: <raj.khem@gmail.com>
Received: from mail-gw0-f54.google.com (mail-gw0-f54.google.com [74.125.83.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 779AE4C80039
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 15:32:52 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj21 with SMTP id 21so2859946gwj.13
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 13:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:mime-version:received:in-reply-to
	:references:from:date:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=mdFM04eL42uqEKxqYuVbT69ZcvXlHYhSf9XxBYbBePo=;
	b=WNe8VrsltTYxSpykwNuuntIHfafTJLsaNgrFe4lVM7bcu8VbVyNqjWHQcUmS2fitMD
	13GeHPDW6S4XFOy3aMxwoa5324tcgTlnZn9Ujf8bmQ947zxY0+0uWzT39bCHzKFD1AsQ
	pB2T6YeXxup1kz/liCoJ2+Rpna8TYdzYTxBGw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	b=o4P6M8Sfto8OXvL2JqnTYtxa/sVdN8ywJp1p4cceXhK2/T1YR5xGHJskbJz5NWw9YP
	+hGiNqvSdPRa74UXyMisVeIgmAlJdBClQ54HawLwR0bDyvVp/dfOo+nMIeVq0Z3Rvqlg
	uMuQ1IA1Z+ekK7DPy/XR+21ymTheXGLVlL2LI=
Received: by 10.90.98.11 with SMTP id v11mr7665088agb.58.1292967171000; Tue,
	21 Dec 2010 13:32:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.90.86.4 with HTTP; Tue, 21 Dec 2010 13:32:30 -0800 (PST)
In-Reply-To: <4D1119EA.9010806@linux.intel.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
	<4D1119EA.9010806@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 13:32:30 -0800
Message-ID: <AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Tue, 21 Dec 2010 21:32:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 21, 2010 at 1:19 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> On 12/21/2010 01:39 AM, Khem Raj wrote:
>>
>> * usually git send-mail is setup by people using git
>> =C2=A0 so use git send-mail to post patches for pull requests
>> =C2=A0 There is how to setup git send-email
>> =C2=A0 see section "Set up git"
>>
>> http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbed=
ded
>
> I didn't use git-send-email for this script because of a few complication=
s
> with it. First, when using the --compose option, there is no way to pass =
it
> a file for the cover-letter. Second, it doesn't scan the entire patch ser=
ies
> for recipients and will send each mail in the thread to different recipie=
nts
> - including the cover letter, which I find simply obnoxious. These preven=
t
> it from being used as a single command with a refspec for the range of
> patches. If you aren't going to do this, then using it in a loop is
> effectively the same as using sendmail. If you're using git-send-email, t=
hen
> you already have local sendmail setup.

No I dont. I use smtpserver with git send-email

>
> Other than using your local git mail aliases, I don't see any advantage t=
o
> using git-send-email.

if using git then its easier for people to use git commands and I
think git email setup
is easier than setting up sendmail.

If you're using the auto-harvest feature, you had to
> dig up the proper email addresses anyway. It does however add a second
> configuration step - the [sendemail] section. I do have this setup myself=
,
> but enough people trip over just getting a local sendmail configuration
> working that adding git sendemail to that just doesn't seem worth it to m=
e.
>
> Is there an advantage to git sendemail that I am overlooking?

I think git send-email sends the patches the expected way and one does not
have to worry about chopping etc. that the script currently does.

>
> Thanks,
>
> Darren Hart
>
>>
>> Signed-off-by: Khem Raj<raj.khem@gmail.com>
>> ---
>> =C2=A0scripts/send-pull-request | =C2=A0 19 ++++++++-----------
>> =C2=A01 files changed, 8 insertions(+), 11 deletions(-)
>>
>> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
>> index 0576a5d..2f0b90d 100755
>> --- a/scripts/send-pull-request
>> +++ b/scripts/send-pull-request
>> @@ -12,8 +12,8 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p
>> pull-dir
>> =C2=A0EOM
>> =C2=A0}
>>
>> -# Collect To and CC addresses from the patch files if they exist
>> -# $1: Which header to add the recipients to, "TO" or "CC"
>> +# Collect To, From and CC addresses from the patch files if they exist
>> +# $1: Which header to add the recipients to, "TO", "FROM" or "CC"
>> =C2=A0# $2: The regex to match and strip from the line with email addres=
ses
>> =C2=A0harvest_recipients()
>> =C2=A0{
>> @@ -27,6 +27,8 @@ harvest_recipients()
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -z "$=
TO" ]; then TO=3D$EMAIL; else TO=3D"$TO,$EMAIL"; fi
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif [ "$TO_CC" =3D=3D "=
CC" ]&& =C2=A0[ "${CC/$EMAIL/}" =3D=3D "$CC" ]&&
>> =C2=A0[ -n "$EMAIL" ]; then
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -z "$=
CC" ]; then CC=3D$EMAIL; else CC=3D"$CC,$EMAIL"; fi
>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0elif [ "$TO_CC" =3D=3D "FROM"=
 ]&& =C2=A0[ "${FROM/$EMAIL/}" =3D=3D "$FROM"
>> ]&& =C2=A0[ -n "$EMAIL" ]; then
>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ -z "$FROM"=
 ]; then FROM=3D$EMAIL; fi
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0done
>> =C2=A0 =C2=A0 =C2=A0done
>> @@ -85,6 +87,7 @@ done
>> =C2=A0# etc. (*-by) will be added to CC.
>> =C2=A0if [ $AUTO -eq 1 ]; then
>> =C2=A0 =C2=A0 =C2=A0harvest_recipients TO "^[Tt][Oo]: *"
>> + =C2=A0 =C2=A0harvest_recipients FROM "^[Ff][rR][oO][mM]: *"
>> =C2=A0 =C2=A0 =C2=A0harvest_recipients CC "^[Cc][Cc]: *"
>> =C2=A0 =C2=A0 =C2=A0harvest_recipients CC "^.*-[Bb][Yy]: *"
>> =C2=A0fi
>> @@ -112,20 +115,14 @@ read cont
>> =C2=A0if [ "$cont" =3D=3D "y" ] || [ "$cont" =3D=3D "Y" ]; then
>> =C2=A0 =C2=A0 =C2=A0ERROR=3D0
>> =C2=A0 =C2=A0 =C2=A0for PATCH in $PDIR/*patch; do
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0# Insert To and CC headers via formail to k=
eep them separate and
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0# appending them to the sendmail command as=
 -- $TO $CC has proven
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0# to be an exercise in futility.
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0#
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0# Use tail to remove the email envelope fro=
m git or formail as
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0# msmtp (sendmail) would choke on them.
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0cat $PATCH | formail -I "To: $TO" -I "CC: $=
CC" | tail -n +2 |
>> sendmail -t
>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# Insert To and CC headers
>> + =C2=A0 =C2=A0 =C2=A0 git send-email --to=3D"$TO" --cc=3D"$CC" --from=
=3D"$FROM" --confirm=3Dauto
>> $PATCH
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if [ $? -eq 1 ]; then
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ERROR=3D1
>> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fi
>> =C2=A0 =C2=A0 =C2=A0done
>> =C2=A0 =C2=A0 =C2=A0if [ $ERROR -eq 1 ]; then
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0echo "ERROR: sendmail failed to send one or=
 more messages. Check
>> your"
>> - =C2=A0 =C2=A0 =C2=A0 =C2=A0echo " =C2=A0 =C2=A0 =C2=A0 sendmail log fo=
r details."
>> + =C2=A0 =C2=A0 =C2=A0 =C2=A0echo "ERROR: git send-mail failed to send o=
ne or more messages."
>> =C2=A0 =C2=A0 =C2=A0fi
>> =C2=A0else
>> =C2=A0 =C2=A0 =C2=A0echo "Send aborted."
>
>
> --
> Darren Hart
> Yocto Linux Kernel
>

