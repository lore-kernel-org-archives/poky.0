Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B2D94C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 17:53:29 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 44AE51660793; Thu,  2 Dec 2010 16:53:29 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3AAF61660788;
	Thu,  2 Dec 2010 16:53:28 -0700 (MST)
Message-ID: <4CF83178.2090305@mlbassoc.com>
Date: Thu, 02 Dec 2010 16:53:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF051D3@shsmsx501.ccr.corp.intel.com>
	<4CF7E4C4.6@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086966@orsmsx504.amr.corp.intel.com>
	<4CF81AC7.7040305@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086D0F@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9502086D0F@orsmsx504.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: FW: Eclipse plugin question
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
X-List-Received-Date: Thu, 02 Dec 2010 23:53:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 04:32 PM, Zhang, Jessica wrote:
> Now, it seems you're having some issue on setting up TCF connections, we
> need to resolve this before you can use remote debugging/run.  Can you right
> click "Terminals" under "localhost.192.168.1.177" and select "properties",
> then highlight "TCF Connection Setting" and send us the screen shot of this?
>
> One thing I want to point out, since you're connecting to remote system
> "192.168.1.177" as root, when you login to that system as root, what command
> prompt you get? E.g. $ or #, then in the TCF connection setup you need to
> set them exactly the same...also, does root need password to login to the
> remote device? If so, in the TCF connection wizard, you need to chage
> PWD.Required from "false" to "true".

That was at least part of the problem.  I don't recall the TCF wizard
ever asking me these questions (but I might have missed it).  I poked
around and right clicked on the connection (192.168.1.177) and got into
the TCF properties and was able to set this to true.

I had to restart eclipse to make it go though.

At this point, I can run something, thanks.  I'll let you know if I
have other problems.

>
> Gary Thomas wrote:
>> On 12/02/2010 12:40 PM, Zhang, Jessica wrote:
>>> OK, can you try this to ensure your tcf terminal etc. is behaving...
>>> 1. Window->Open Perspective->Other->Remote system Explorer
>>> 2. In the RSE window, you should see local and below it should have
>>> the remote host/board, there should be "Terminals", can you right
>>> click "Terminals" and select connect, it'll prompt you to login,
>>> after you login, in the right pane of IDE, it should open a remote
>>> TCF terminal to the board and do some thing in the remote terminal,
>>> e.g. run your program there, etc.
>>> 3. Once you've connected, you can also select "Shells"->"Launch
>>> Shell", this will open a remote shell tab in the IDE and do
>>> something there...
>>>
>>> Let us know you findings and we'll debug your issue from there.
>>
>> Interestingly, when I right-click on Terminals, I only have the option
>> to _disconnect_, not connect.
>>
>> I went ahead and disconnected, then reconnected.  More messages like
>> before on my host console.  No remote TCF terminal.  See
>>     http://www.mlbassoc.com/poky/EclipsePlugin/TCF-after-connect.png
>>
>> Then I tried to explicitly open a terminal, no luck either
>>
>> http://www.mlbassoc.com/poky/EclipsePlugin/TCF-after-open-terminal.png
>>
>> I also tried to open a shell, still no joy
>>
>> http://www.mlbassoc.com/poky/EclipsePlugin/TCF-after-launch-shell.png
>>
>> Anything else I can try?
>>
>>> Gary Thomas wrote:
>>>> On 11/25/2010 07:13 PM, Ke, Liping wrote:
>>>>> Seems I use wrong mail list and lost the mail.
>>>>>
>>>>> Yes. Indeed we need to document this considering the code will
>>>>> be finally in the TCF upstream, more users might need it.
>>>>
>>>> I've tried these, but still can't run any programs.
>>>>
>>>> When I'm in the RSE browser mode, I can talk to the board, view
>>>> processes, files, etc.
>>>>
>>>> However, when I try to run code, it just sits there.  I see the
>>>> attached messages on the host console where I started eclipse.
>>>> Does this help? I can see on my target machine that my program was
>>>> downloaded (I told it to go to /tmp/yocto_app), but it just doesn't
>>>> seem to run via the remote connection.
>>>>
>>>> Ideas?
>>>>
>>>>>> -----Original Message-----
>>>>>> From: Ke, Liping
>>>>>> Sent: Friday, November 26, 2010 9:35 AM
>>>>>> To: 'Gary Thomas'; Poky
>>>>>> Subject: RE: [poky] Eclipse plugin question
>>>>>>
>>>>>> Hi, Gary
>>>>>>
>>>>>> Thanks for the trying. I have seen your screenshot. Just one more
>>>>>> question. You have set up an connection 192.168.12.177. Can you
>>>>>> tell us which connection type you are created? If you're creating
>>>>>> TCF connection(Please fill the properties of your connection, such
>>>>>> as prompt char [$ or # or>, default is #, it depends on the host
>>>>>> environment]), yes, you need to have a agent running on your
>>>>>> target. The details are: For CDT remote debugger, it depends on
>>>>>> shell/terminal services. If no response back, it will wait for the
>>>>>> input ( Current tcf shell/terminal service is similar as telnet
>>>>>> shell/terminal service, so both of them will not exist but wait
>>>>>> for the new input stream of target, that's why you see the
>>>>>> no-response problem.).
>>>>>>
>>>>>> One validation style is that you switch your eclipse perspective
>>>>>> ->  RSE browser, there, you will see the connection name
>>>>>> 192.168.12.177 you have created. And in that view, you can use
>>>>>> RSE browser to view your target. If RSE viewer works fine, they
>>>>>> your debugger connection will just be fine.
>>>>>>
>>>>>>
>>>>>> Paste a screenshot of tcf connection property settings in the
>>>>>> attachment. At the same time, an agent will be run in the target.
>>>>>>
>>>>>> Command.Prompt: $ (in my target machine ubuntu, for normal user,
>>>>>> it is $. If logged in as root user in target unbuntu, I will
>>>>>> change it to #. If you are using normal user, please run agent as
>>>>>> normal user. Otherwise, please run it as $sudo ./agent -Llog)
>>>>>> Login.Prompt: never change it.
>>>>>> Login.Required: true (in normal case, we need to login)
>>>>>> Password.Prompt: never change it.
>>>>>> Pwd.Required: false If your target permit no password and could be
>>>>>> directly login, leave it as "false"
>>>>>>
>>>>>> Hope above information is useful to you:) Any problem, just let
>>>>>> us know!
>>>>>>
>>>>>> Thanks a lot!
>>>>>> criping
>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: poky-bounces@yoctoproject.org [mailto:poky-
>>>>>>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>>>>>>> Sent: Friday, November 26, 2010 12:12 AM
>>>>>>> To: Poky
>>>>>>> Subject: [poky] Eclipse plugin question
>>>>>>>
>>>>>>> I have the eclipse plugin working fairly well now - I can build
>>>>>>> an application, etc.  I tried manually downloading the code to my
>>>>>>> board (I have real hardware, not QEMU) and it runs fine.
>>>>>>>
>>>>>>> Next, I wanted to try running/debugging from eclipse.  I set up
>>>>>>> the run configuration and the code was downloaded to the board.
>>>>>>> The last indication said it was starting the debugger.
>>>>>>> This window stayed up a long time and then nothing more.
>>>>>>>
>>>>>>> Note: I did figure out that I needed tcf-agent running on my
>>>>>>> board (this is not documented).  I also have GDB server on the
>>>>>>> board.
>>>>>>>
>>>>>>> You can see my setup at
>>>>>>> http://www.mlbassoc.com/poky/eclipse_plugin
>>>>>>>
>>>>>>> Thanks for any ideas/pointers
>>>>>>>
>>>>>>> --
>>>>>>> ------------------------------------------------------------
>>>>>>> Gary Thomas                 |  Consulting for the
>>>>>>> MLB Associates              |    Embedded world
>>>>>>> ------------------------------------------------------------
>>>>>>> _______________________________________________
>>>>>>> poky mailing list
>>>>>>> poky@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

