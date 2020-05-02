# GOAL of SafetyOS - SOS

This is a SafetyOS  - named SOS - which is to be developed according to ISO26262 as an element out of context. 
The purpose of SafetyOS is to allow to run Linux as a QM OS above Safety Components on an ARMv8 SoC.

The Product shall be working on a TDA4 or an other SoCs supporting ARVv8. 
The Right side of the V is scoped out from this project scope. This means all unit tests
and integration tests are subject to the user of SOS. Also has the user to verify all work 
products, links and consistency before any usage of this prodct.

## Basic Idea and Scope

Type 0 hyper visor allocate one or more  complete Core of an SoC to an Operating System. 
Safety critical system need to be designed to reserve a guranteed share of time to each component
so that each component - if needs to be run has the time to run. This leaves lots of CPU time in the
safety domain unutilized.

Type 2 HyperVisor solve this problem by abstracting the HW and allowing the Guest OS to share the CPU cores. Such a Type 2 Hypervisor is diffcult to write as it includes lots of code which due to lack of freedom of interference is leading to an ASIL requirement to large blocks of the OS and may be even Drivers or emulation layers.

The Idea of SOS is to use the Secure domain  - which by nature is protected from the non-secure domain for Safety Components. If the existing Secure Components (Secure OS & Co) are sufficeinly protected and not affect the Safety components, they can co-exist. As secure components need higher scrutinity anyway they could also be rewritten or properly documented and tested to fulfill ISO26262 to allow their coexistence.

The SOS does not need to provide any communication mechanism, it is assumed that the Safety Components and the rest of the System work with a shared mememory communication mechanism. 

SOS shall provide:
* memory protection and isolation to allow a sole owner ship of memories and perhierials 
* shall allow predicatble run to completion of safety components
* shall allow a QM OS  (e.g. Linux) to co-exist without any chance to affect the execution of the safety components in a timely and spacial fashion


The communication between Safety Components is not scope of the project as of now. The scope may be changed at any time. 


## Documentation and Work products according to ISO26262

The Documentation produced in this repository may only be used in a safety critical product if all contributors are payed
their share, the contributors shall provide the number of hours they spent on this commit in the
commit message.  In the form of e.g. 

HOURS: 0.3

Accounted time shall not be changed after that commit.

The hourly rate is at least 20 EUR per Hour per  Product as of 1.5.2020. This rate may be increased once per year.

One Product is the ECU for which this Documentation is used for certification.

Changes with excessive hours booked shall not be pulled into the Project - the decision is made on case by case basis by the person who merges the commit into the project.  There is no right to have a patch merged.

The user of this work shall provide on request proof that he has payed all contributors properly up to 2 years after release of the product. Contributors shall be payed through paypal. Contributors shall ensure that their paypal e-mail address is used in each commit message. Contributors have to comply to tax regulations on their own.

Commits older than 6 years shall not be considered for payment.


## License

The License of the code  shall be 3-Claus BSD. No GPL code shall be included. 


> Copyright (c) 2020, Thorsten Wilmer and others, All rights reserved.
>
Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:
>
>-  Redistributions of source code must retain the above copyright notice, this
list of conditions and the following disclaimer.
>
>-  Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

> -  Neither the name of Arm nor the names of its contributors may be used to
endorse or promote products derived from this software without specific
prior written permission.

> THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


