Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D99854C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 16:16:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Dec 2010 14:16:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,209,1291622400"; d="scan'208";a="364904723"
Received: from unknown (HELO [10.255.14.74]) ([10.255.14.74])
	by azsmga001.ch.intel.com with ESMTP; 21 Dec 2010 14:16:44 -0800
Message-ID: <4D11274F.5030305@linux.intel.com>
Date: Tue, 21 Dec 2010 14:16:47 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1292924367-19873-1-git-send-email-raj.khem@gmail.com>
	<4D1119EA.9010806@linux.intel.com>
	<AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
In-Reply-To: <AANLkTim9J_92mWgmrRW4_sSXm=AW1wfFwdZcArEbC20a@mail.gmail.com>
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
X-List-Received-Date: Tue, 21 Dec 2010 22:16:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 01:32 PM, Khem Raj wrote:
> On Tue, Dec 21, 2010 at 1:19 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> On 12/21/2010 01:39 AM, Khem Raj wrote:
>>>
>>> * usually git send-mail is setup by people using git
>>>    so use git send-mail to post patches for pull requests
>>>    There is how to setup git send-email
>>>    see section "Set up git"
>>>
>>> http://www.openembedded.org/index.php/How_to_submit_a_patch_to_OpenEmbedded
>>
>> I didn't use git-send-email for this script because of a few complications
>> with it. First, when using the --compose option, there is no way to pass it
>> a file for the cover-letter. Second, it doesn't scan the entire patch series
>> for recipients and will send each mail in the thread to different recipients
>> - including the cover letter, which I find simply obnoxious. These prevent
>> it from being used as a single command with a refspec for the range of
>> patches. If you aren't going to do this, then using it in a loop is
>> effectively the same as using sendmail. If you're using git-send-email, then
>> you already have local sendmail setup.
>
> No I dont. I use smtpserver with git send-email

OK, I meant a local MTA. I use msmtp-mta so as to avoid the complexity 
of postfix/exim. It talks directly to an external smtp server, but 
provides a sendmail mode with a sendmail symlink to msmtp. I believe 
ssmtp does something similar. This effectively moves the config outside 
of git into the tools config files, but they are no more complicated 
than git's smtp-server directives.

>>
>> Other than using your local git mail aliases, I don't see any advantage to
>> using git-send-email.
>
> if using git then its easier for people to use git commands and I

Since the script abstracts all the git commands away for the purpose of 
sending the pull request, it doesn't seem like it would matter there. If 
you mean you don't want to have to setup another mail tool, I hear you 
there and understand. Consider msmtp, it's trivial to setup with an 
external smtp server.

> think git email setup
> is easier than setting up sendmail.

It's easier than postfix and exim - no argument there. msmtp and ssmtp 
are very trivial MTA providers that work with git and provide a sendmail 
compatibile command.

> If you're using the auto-harvest feature, you had to
>> dig up the proper email addresses anyway. It does however add a second
>> configuration step - the [sendemail] section. I do have this setup myself,
>> but enough people trip over just getting a local sendmail configuration
>> working that adding git sendemail to that just doesn't seem worth it to me.
>>
>> Is there an advantage to git sendemail that I am overlooking?
>
> I think git send-email sends the patches the expected way and one does not
> have to worry about chopping etc. that the script currently does.

If so, that's an advantage. Can you have a look and see if that is 
indeed the case?

As it is, we seem to be talking about making it simpler to configure a 
local MTA. msmtp and ssmtp provide a very simple way to do that, and is 
applicable to more than just git. Setting up git isn't difficult either, 
but doesn't offer any advantage that I can see (with the possible 
exception of eliminating the pipe hackery in the current script).

Unless we can show this more than a bike-shed discussion, I'd just 
assume leave it alone - or add a -g option that sends mail using 
git-send-email instead (with an option to set it in an env var maybe). 
Perhaps that would meet everyone's needs?

Thanks,

Darren

>
>>
>> Thanks,
>>
>> Darren Hart
>>
>>>
>>> Signed-off-by: Khem Raj<raj.khem@gmail.com>
>>> ---
>>>   scripts/send-pull-request |   19 ++++++++-----------
>>>   1 files changed, 8 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/scripts/send-pull-request b/scripts/send-pull-request
>>> index 0576a5d..2f0b90d 100755
>>> --- a/scripts/send-pull-request
>>> +++ b/scripts/send-pull-request
>>> @@ -12,8 +12,8 @@ Usage: $(basename $0) [-h] [-a] [[-t email]...] -p
>>> pull-dir
>>>   EOM
>>>   }
>>>
>>> -# Collect To and CC addresses from the patch files if they exist
>>> -# $1: Which header to add the recipients to, "TO" or "CC"
>>> +# Collect To, From and CC addresses from the patch files if they exist
>>> +# $1: Which header to add the recipients to, "TO", "FROM" or "CC"
>>>   # $2: The regex to match and strip from the line with email addresses
>>>   harvest_recipients()
>>>   {
>>> @@ -27,6 +27,8 @@ harvest_recipients()
>>>                   if [ -z "$TO" ]; then TO=$EMAIL; else TO="$TO,$EMAIL"; fi
>>>               elif [ "$TO_CC" == "CC" ]&&    [ "${CC/$EMAIL/}" == "$CC" ]&&
>>>   [ -n "$EMAIL" ]; then
>>>                   if [ -z "$CC" ]; then CC=$EMAIL; else CC="$CC,$EMAIL"; fi
>>> +            elif [ "$TO_CC" == "FROM" ]&&    [ "${FROM/$EMAIL/}" == "$FROM"
>>> ]&&    [ -n "$EMAIL" ]; then
>>> +                if [ -z "$FROM" ]; then FROM=$EMAIL; fi
>>>               fi
>>>           done
>>>       done
>>> @@ -85,6 +87,7 @@ done
>>>   # etc. (*-by) will be added to CC.
>>>   if [ $AUTO -eq 1 ]; then
>>>       harvest_recipients TO "^[Tt][Oo]: *"
>>> +    harvest_recipients FROM "^[Ff][rR][oO][mM]: *"
>>>       harvest_recipients CC "^[Cc][Cc]: *"
>>>       harvest_recipients CC "^.*-[Bb][Yy]: *"
>>>   fi
>>> @@ -112,20 +115,14 @@ read cont
>>>   if [ "$cont" == "y" ] || [ "$cont" == "Y" ]; then
>>>       ERROR=0
>>>       for PATCH in $PDIR/*patch; do
>>> -        # Insert To and CC headers via formail to keep them separate and
>>> -        # appending them to the sendmail command as -- $TO $CC has proven
>>> -        # to be an exercise in futility.
>>> -        #
>>> -        # Use tail to remove the email envelope from git or formail as
>>> -        # msmtp (sendmail) would choke on them.
>>> -        cat $PATCH | formail -I "To: $TO" -I "CC: $CC" | tail -n +2 |
>>> sendmail -t
>>> +        # Insert To and CC headers
>>> +       git send-email --to="$TO" --cc="$CC" --from="$FROM" --confirm=auto
>>> $PATCH
>>>           if [ $? -eq 1 ]; then
>>>               ERROR=1
>>>           fi
>>>       done
>>>       if [ $ERROR -eq 1 ]; then
>>> -        echo "ERROR: sendmail failed to send one or more messages. Check
>>> your"
>>> -        echo "       sendmail log for details."
>>> +        echo "ERROR: git send-mail failed to send one or more messages."
>>>       fi
>>>   else
>>>       echo "Send aborted."
>>
>>
>> --
>> Darren Hart
>> Yocto Linux Kernel
>>


-- 
Darren Hart
Yocto Linux Kernel

