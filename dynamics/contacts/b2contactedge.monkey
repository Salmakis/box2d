Strict
#rem
'/*
'* Copyright (c) 2011, Damian Sinclair
'*
'* This is a port of Box2D by Erin Catto (box2d.org).
'* It is translated from the Flash port: Box2DFlash, by BorisTheBrave (http://www.box2dflash.org/).
'* Box2DFlash also credits Matt Bush and John Nesky as contributors.
'*
'* All rights reserved.
'* Redistribution and use in source and binary forms, with or without
'* modification, are permitted provided that the following conditions are met:
'*
'*   - Redistributions of source code must retain the above copyright
'*     notice, this list of conditions and the following disclaimer.
'*   - Redistributions in binary form must reproduce the above copyright
'*     notice, this list of conditions and the following disclaimer in the
'*     documentation and/or other materials provided with the distribution.
'*
'* THIS SOFTWARE IS PROVIDED BY THE MONKEYBOX2D PROJECT CONTRIBUTORS "AS IS" AND
'* ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
'* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
'* DISCLAIMED. IN NO EVENT SHALL THE MONKEYBOX2D PROJECT CONTRIBUTORS BE LIABLE
'* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
'* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
'* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
'* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
'* LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
'* OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
'* DAMAGE.
'*/
#end
Import box2d.flash.flashtypes
Import box2d.dynamics.b2body
Import box2d.dynamics.contacts


#rem
'/**
'* A contact used(edge) to connect bodies and contacts together
'* in a contact graph where each a(body) node and each contact
'* is an edge. A contact edge belongs to a doubly linked list
'* maintained in each attached body. Each contact has two contact
'* nodes, one for each attached body.
'*/
#end
Class b2ContactEdge
    
    Field other:b2Body
    Field contact:b2Contact
    Field prevItem:b2ContactEdge
    Field nextItem:b2ContactEdge
End
