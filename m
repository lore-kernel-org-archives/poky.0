Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 379AF4C81067
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 09:14:28 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B8FB416603C9; Tue, 21 Dec 2010 08:14:27 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3D3401660185;
	Tue, 21 Dec 2010 08:14:26 -0700 (MST)
Message-ID: <4D10C452.1000405@mlbassoc.com>
Date: Tue, 21 Dec 2010 08:14:26 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D0ABF1C.6090706@intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>	<4D0AC7D8.8080001@intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>	<4D0ACB43.8050909@intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>	<AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>	<1292594329.25087.40.camel@rex>	<4D0B7CF4.4070407@mlbassoc.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F6A3C8D@shsmsx502.ccr.corp.intel.com>	<625BA99ED14B2D499DC4E29D8138F1504D5F6A40FF@shsmsx502.ccr.corp.intel.com>
	<4D109DE4.2070901@mlbassoc.com>
In-Reply-To: <4D109DE4.2070901@mlbassoc.com>
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	Chris Larson <clarson@kergoth.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: perl binary hard-code path hurts sstate
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
X-List-Received-Date: Tue, 21 Dec 2010 15:14:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 05:30 AM, Gary Thomas wrote:
> On 12/21/2010 04:51 AM, Tian, Kevin wrote:
>>> From: Tian, Kevin
>>> Sent: Tuesday, December 21, 2010 9:10 AM
>>>
>>>> From: Gary Thomas
>>>> Sent: Friday, December 17, 2010 11:09 PM
>>>>
>>>> On 12/17/2010 06:58 AM, Richard Purdie wrote:
>>>>> On Fri, 2010-12-17 at 06:49 -0700, Chris Larson wrote:
>>>>>> These sorts of issues aren't new, or fun, sadly. We've run into many
>>>>>> like this using packaged staging. We had to use the variable to
>>>>>> disable packaged-staging for exactly this reason, so something similar
>>>>>> for sstate would indeed be useful for this.
>>>>>
>>>>> In cases like this I'd suggest adding the encoded path into the checksum
>>>>> via vardeps. This means the sstate package will be reused when the path
>>>>> matches but not otherwise.
>>>>>
>>>>> We can then work on removing the dependencies which I agree is the goal
>>>>> but we should get them identified first.
>>>>
>>>> Sadly, this problem is not confined to perl. I just tried this experiment:
>>
>> Hi, Gary, I can't reproduce in my side, though I use only one machine.
>>
>>>> * Build Poky on MachineA to some directory $NEW
>>>> * Copy Poky ($POKYBASE) and $NEW/sstate-cache to MachineB, in this case
>>>> the path for $POKYBASE is the same on both machines but $NEW differs.
>>>> MachineA:$NEW does not exist on MachineB
>>>> * Try to build on Machine B, pointing SSTATE_MIRRORS to $NEW/sstate-cache
>>>> This build is in $NEW2
>>
>> compare to your steps, mine is:
>>
>> * build Poky in $DIR1, with sstate generated in ${SSTATE-CACHE} (a global one)
>> * then with same $POKYBASE, create a new build $DIR2, with SSTATE_MIRRORS
>> pointing to ${SSTATE-CACHE}
>> * move $DIR1 to $DIR1.bak
>>
>> This way if there's reference to $DIR1, I should be able to observe failure
>>
>>>> The process fails for me building the kernel:
>>>> | arm-poky-linux-gnueabi-ld: libgcc.a: No such file: No such file or directory
>>>> Looking carefully, I can see that the compiler is looking for libgcc.a in
>>>> the directory path $NEW that is only on MachineA.
>>
>> However I didn't see above failure and most sstate packages could be reused
>> successfully except several ones depending on perl-native...
>>
>>>>
>>>> So this is the same problem Paul had, just for the cross compiler
>>>> instead of perl.
>>>>
>>>> n.b. Is there a bug # I should use to be tracking this?
>>>>
>>>
>>> I'll see whether I can reproduce this after RP's new fix about perl-native.
>>
>> so Gary, could you try latest poky master or verify whether my single-machine steps
>> may expose same failure in your side? Or is there any step not equivalent between
>> our cases?
>
> Yes, I'll try it now, thanks
>

Still fails.  There is one step I wasn't clear on - if you
just follow the steps above, you'll succeed and get a working
result, using only the staged (sstate cached) packages.  However,
if you try and build some other package, or in my case I forced
a build of the kernel, it fails.

Amended steps to reproduce this failure:
   * Build Poky on MachineA, results in MachineA:NEW1
   * Copy MachineA:NEW1/sstate-cache to MachineB:NEW1_CACHE
   * Build Poky on MachineB, results in MachineB:NEW2, using
     MachineB:NEW1_CACHE for SSTATE_MIRRORS
   * Disable SSTATE_MIRRORS in conf/local.conf on MachineB:NEW2
   * Build a package from scratch.  In my case, I rebuilt the kernel:
     - bitbake virtual/kernel -c clean
     - rm sstate-cache/sstate-linux-am*
     - bitbake virtual/kernel
     My kernel is based on a local recipe linux-am_X.Y.Z

     Note: I tried to simplify this process by using 'cleanall'
     but ran into a fetch problem (reported separately)

Notes:
   * For my testing, I used a simple package set, e.g. poky-image-minimal
   * My Poky tree is based on today's master 4cd40dbaa8aef7b6b9ff9ce892a576b802f4b1ec
   * I notice that this process now rebuilds some 20 packages from scratch
     on MachineB.  These include the perl-native, etc, that this thread has
     been discussing.  Is this expected?

Thanks for working on this; it's getting close and will be
a big help to my customers.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

