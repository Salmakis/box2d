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
Import box2d.common.math
Import box2d.common
Import box2d.collision.shapes
Import box2d.dynamics
#rem
'/**
'* Applies an acceleration every frame, like gravity
'*/
#end
Class b2ConstantAccelController Extends b2Controller
    #rem
    '/**
    '* The acceleration to apply
    '*/
    #end
    Field A:b2Vec2 = New b2Vec2(0,0)
    Method TimeStep : void (timeStep:b2TimeStep)
        
        Local smallA :b2Vec2 = New b2Vec2(A.x*timeStep.dt,A.y*timeStep.dt)
        Local i:b2ControllerEdge=m_bodyList
        While( i <> Null )
            Local body :b2Body = i.body
            If(Not(body.IsAwake()))
                Continue
            End
            '//Am being lazy here
            body.SetLinearVelocity(New b2Vec2(body.GetLinearVelocity().x +smallA.x,body.GetLinearVelocity().y +smallA.y))
            i=i.nextBody
        End
    End
End


