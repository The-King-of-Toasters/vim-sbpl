" Vim Syntax file.
" Language:        macOS Sandbox Policy Language
" Maintainer:      Stephen Gregoratto
" Original Author: Andreas Jonsson <andreas@romab.com>
" Latest Revision: 19 October, 2021
"
" Copyright 2010 Robert Malmgren AB. All rights reserved.
" Copyright 2021 Stephen Gregoratto. All rights reserved.
"
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are met:
"
" 1. Redistributions of source code must retain the above copyright notice,
"    this list of conditions and the following disclaimer.
"
" 2. Redistributions in binary form must reproduce the above copyright notice,
"    this list of conditions and the following disclaimer in the documentation
"    and/or other materials provided with the distribution.
"
" THIS SOFTWARE IS PROVIDED BY Robert Malmgren AB ``AS IS'' AND ANY EXPRESS OR
" IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
" EVENT SHALL <COPYRIGHT HOLDER> OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
" INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
" BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
" DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
" OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
" NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
" EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
" 
" The views and conclusions contained in the software and documentation are
" those of the authors and should not be interpreted as representing official
" policies, either expressed or implied, of Robert Malmgren AB.
if exists('b:current_syntax')
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

runtime! syntax/scheme.vim

syntax keyword SBPLversion version
syntax keyword SBPLDirectives import trace
syntax keyword SBPLAction allow deny
syntax keyword SBPLFileOperations file* file-chroot file-ioctl file-read* 
syntax keyword SBPLFileOperations file-read-data file-read-metadata 
syntax keyword SBPLFileOperations file-read-xattr file-revoke 
syntax keyword SBPLFileOperations file-write* file-write-data file-write-flags
syntax keyword SBPLFileOperations file-write-mode file-write-mount 
syntax keyword SBPLFileOperations file-write-owner file-write-setugid 
syntax keyword SBPLFileOperations file-write-times file-write-unmount file-write-xattr
syntax keyword SBPLIpcOperations ipc* ipc-posix* ipc-posix-sem ipc-posix-shm
syntax keyword SBPLIpcOperations ipc-sysv* ipc-sysv-msg ipc-sysv-shm 
syntax keyword SBPLMachOperations mach-bootstrap mach-lookup mach-priv*
syntax keyword SBPLMachOperations mach-priv-host-port mach-priv-task-port
syntax keyword SBPLMachOperations mach-task-name mach-per-user-lookup
syntax keyword SBPLNetworkOperations network* network-inbound network-bind
syntax keyword SBPLNetworkOperations network-outbount
syntax keyword SBPLProcessOperations process* process-exec process-fork
syntax keyword SBPLSignalOperation signal
syntax keyword SBPLSysctlOperations sysctl* sysctl-read sysctl-write
syntax keyword SBPLSystemOperations system* system-acct system-audit 
syntax keyword SBPLSystemOperations system-fsctl system-lcid system-mac-label
syntax keyword SBPLSystemOperations system-nfssvc system-reboot 
syntax keyword SBPLSystemOperations system-set-time system-socket system-swap
syntax keyword SBPLSystemOperations system-write-bootstrap
syntax keyword SBPLJobOperations job-creation
syntax keyword SBPLotherOperations default
syntax keyword SBPLFilters regex subpath xattr file-mode literal
syntax keyword SBPLMachFilters global-name local-name global-name-regex local-name-regex 
syntax keyword SBPLNetworkFilters ip ip4 ip6 udp udp4 udp6 tcp tcp4 tcp6 unix unix-socket
syntax keyword SBPLNetworkDest local remote from to
syntax keyword SBPLSignalFilters self pgrp others
syntax keyword SBPLModifiers no-log no-sandbox send-signal no-profile
syntax keyword SBPLSystemSignals SIGHUP SIGINT SIGQUIT SIGILL SIGTRAP SIGABRT 
syntax keyword SBPLSystemSignals SIGPOLL SIGIOT SIGEMT SIGFPE SIGKILL SIGBUS
syntax keyword SBPLSystemSignals SIGSEGV SIGSYS SIGPIPE SIGALRM SIGTERM SIGURG
syntax keyword SBPLSystemSignals SIGSTOP SIGTSTP SIGCONT SIGCHLD SIGTTIN SIGTTOU
syntax keyword SBPLSystemSignals SIGIO SIGXCPU SIGXFSZ SIGVTALRM SIGPROF SIGWINCH
syntax keyword SBPLSystemSignals SIGINFO SIGUSR1 SIGUSR2

highlight default link SBPLAction Statement
highlight default link SBPLFileOperations function
highlight default link SBPLIpcOperations function
highlight default link SBPLJobOperations function
highlight default link SBPLMachOperations function
highlight default link SBPLNetworkOperations function
highlight default link SBPLProcessOperations function
highlight default link SBPLSignalOperation function
highlight default link SBPLSysctlOperations function
highlight default link SBPLSystemOperations function
highlight default link SBPLOtherOperations function
highlight default link SBPLFilters define
highlight default link SBPLNetworkFilters define
highlight default link SBPLNetworkDest string
highlight default link SBPLMachFilters define
highlight default link SBPLSignalFilters define
highlight default link SBPLModifiers identifier 
highlight default link SBPLSystemSignals Constant
highlight default link SBPLDirectives Include

let b:current_syntax = 'sbpl'

let &cpo = s:cpo_save
unlet! s:cpo_save
