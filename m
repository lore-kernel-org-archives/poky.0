Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 642514C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 12:26:14 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EB1A91660523; Thu,  2 Dec 2010 11:26:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id DA12316603C2;
	Thu,  2 Dec 2010 11:26:12 -0700 (MST)
Message-ID: <4CF7E4C4.6@mlbassoc.com>
Date: Thu, 02 Dec 2010 11:26:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF051D3@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659732FF051D3@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Thu, 02 Dec 2010 18:26:14 -0000
X-Groupsio-MsgNum: 818
Content-Type: multipart/mixed; boundary="------------030203070104010301030205"

--------------030203070104010301030205
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/25/2010 07:13 PM, Ke, Liping wrote:
> Seems I use wrong mail list and lost the mail.
>
> Yes. Indeed we need to document this considering the code will
> be finally in the TCF upstream, more users might need it.

I've tried these, but still can't run any programs.

When I'm in the RSE browser mode, I can talk to the board, view processes,
files, etc.

However, when I try to run code, it just sits there.  I see the attached
messages on the host console where I started eclipse.  Does this help?
I can see on my target machine that my program was downloaded (I told
it to go to /tmp/yocto_app), but it just doesn't seem to run via the
remote connection.

Ideas?

>> -----Original Message-----
>> From: Ke, Liping
>> Sent: Friday, November 26, 2010 9:35 AM
>> To: 'Gary Thomas'; Poky
>> Subject: RE: [poky] Eclipse plugin question
>>
>> Hi, Gary
>>
>> Thanks for the trying. I have seen your screenshot. Just one more
>> question. You have set up an connection 192.168.12.177. Can you tell us
>> which connection type you are created? If you're creating TCF
>> connection(Please fill the properties of your connection, such as
>> prompt char [$ or # or>, default is #, it depends on the host
>> environment]), yes, you need to have a agent running on your target.
>> The details are:
>> For CDT remote debugger, it depends on shell/terminal services. If no
>> response back, it will wait for the input ( Current tcf shell/terminal
>> service is similar as telnet shell/terminal service, so both of them
>> will not exist but wait for the new input stream of target, that's why
>> you see the no-response problem.).
>>
>> One validation style is that you switch your eclipse perspective ->  RSE
>> browser, there, you will see the connection name 192.168.12.177 you
>> have created. And in that view, you can use RSE browser to view your
>> target. If RSE viewer works fine, they your debugger connection will
>> just be fine.
>>
>>
>> Paste a screenshot of tcf connection property settings in the
>> attachment. At the same time, an agent will be run in the target.
>>
>> Command.Prompt: $ (in my target machine ubuntu, for normal user, it is
>> $. If logged in as root user in target unbuntu, I will change it to #.
>> If you are using normal user, please run agent as normal user.
>> Otherwise, please run it as $sudo ./agent -Llog)
>> Login.Prompt: never change it.
>> Login.Required: true (in normal case, we need to login)
>> Password.Prompt: never change it.
>> Pwd.Required: false If your target permit no password and could be
>> directly login, leave it as "false"
>>
>> Hope above information is useful to you:) Any problem, just let us know!
>>
>> Thanks a lot!
>> criping
>>
>>> -----Original Message-----
>>> From: poky-bounces@yoctoproject.org [mailto:poky-
>>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>>> Sent: Friday, November 26, 2010 12:12 AM
>>> To: Poky
>>> Subject: [poky] Eclipse plugin question
>>>
>>> I have the eclipse plugin working fairly well now - I can build an
>>> application, etc.  I tried manually downloading the code to my board
>>> (I have real hardware, not QEMU) and it runs fine.
>>>
>>> Next, I wanted to try running/debugging from eclipse.  I set up the
>>> run configuration and the code was downloaded to the board.  The last
>>> indication said it was starting the debugger.
>>> This window stayed up a long time and then nothing more.
>>>
>>> Note: I did figure out that I needed tcf-agent running on my board
>>> (this is not documented).  I also have GDB server on the board.
>>>
>>> You can see my setup at http://www.mlbassoc.com/poky/eclipse_plugin
>>>
>>> Thanks for any ideas/pointers
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------030203070104010301030205
Content-Type: text/plain;
 name="eclipse_messages"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="eclipse_messages"

Stream subscribed
new stream id: VS0 , type: Terminals is created
new stream id: VS1 , type: Terminals is created
write line: root

value is root

write: ****Console terminal shell T1848 exited, current shell ID T1848
write line: 

value is 

write: TCF shell Service: Connected
write line: echo $PWD'>'

write line: chmod +x /tmp/yocto_app;exit

stream id: VS0 type: Terminals is disposed
stream id: VS1 type: Terminals is disposed
org.eclipse.rse.services.clientserver.messages.SystemMessageException: TCF error report:
Command: Terminals exit "T1848"
Time: 2010-12-02 06:03:53.559
Error text: Invalid context ID
Error code: 16
        at org.eclipse.tm.internal.tcf.rse.TCFRSETask.getS(Unknown Source)
        at org.eclipse.tm.internal.tcf.rse.shells.TCFTerminalShell.exit(Unknown Source)
        at org.eclipse.rse.internal.services.shells.TerminalServiceHostShell.exit(TerminalServiceHostShell.java:122)
        at org.eclipse.rse.services.shells.HostShellProcessAdapter.destroy(HostShellProcessAdapter.java:66)
        at org.eclipse.cdt.launch.remote.RemoteRunLaunchDelegate.remoteFileDownload(RemoteRunLaunchDelegate.java:294)
        at org.eclipse.cdt.launch.remote.RemoteRunLaunchDelegate.launch(RemoteRunLaunchDelegate.java:219)
        at org.eclipse.debug.internal.core.LaunchConfiguration.launch(LaunchConfiguration.java:853)
        at org.eclipse.debug.internal.core.LaunchConfiguration.launch(LaunchConfiguration.java:702)
        at org.eclipse.debug.internal.ui.DebugUIPlugin.buildAndLaunch(DebugUIPlugin.java:923)
        at org.eclipse.debug.internal.ui.DebugUIPlugin$7.run(DebugUIPlugin.java:1009)
        at org.eclipse.jface.operation.ModalContext$ModalContextThread.run(ModalContext.java:121)
new stream id: VS2 , type: Terminals is created
new stream id: VS3 , type: Terminals is created
write line: root

value is root

write: ****Console terminal shell T1853 exited, current shell ID T1853
write line: 

value is 

write: TCF shell Service: Connected
write line: echo $PWD'>'

write line: /tmp/yocto_app;exit



--------------030203070104010301030205--
