.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
.super Landroid/os/Handler;
.source "Cocos2dxVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoHandler"
.end annotation


# instance fields
.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 1
    .param p1, "helper"    # Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 171
    return-void

    .line 80
    :sswitch_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 81
    .local v0, "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_createVideoView(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$1(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 85
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_1
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 86
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_removeVideoView(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$2(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 90
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 91
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoURL(IILjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$3(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_3
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 96
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_startVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$4(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto :goto_0

    .line 100
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_4
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 101
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 102
    .local v6, "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v4, v6, Landroid/graphics/Rect;->right:I

    .line 103
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 102
    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoRect(IIIII)V
    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$5(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V

    goto :goto_0

    .line 107
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :sswitch_5
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 108
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 109
    .restart local v6    # "rect":Landroid/graphics/Rect;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_0

    .line 110
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 111
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 110
    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V
    invoke-static {v0, v1, v4, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto :goto_0

    .line 113
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, v6, Landroid/graphics/Rect;->right:I

    .line 114
    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    .line 113
    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setFullScreenEnabled(IZII)V
    invoke-static {v0, v1, v5, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$6(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    goto :goto_0

    .line 119
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    .end local v6    # "rect":Landroid/graphics/Rect;
    :sswitch_6
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 120
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_pauseVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$7(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 125
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_resumeVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$8(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 129
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_8
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 130
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_stopVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$9(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_9
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 135
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_seekVideoTo(II)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$10(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_a
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 140
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_1

    .line 141
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V
    invoke-static {v0, v1, v4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 143
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoVisible(IZ)V
    invoke-static {v0, v1, v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$11(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_b
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 149
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_restartVideo(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$12(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_c
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 154
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v4, :cond_2

    .line 155
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V
    invoke-static {v0, v1, v4}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 157
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->_setVideoKeepRatio(IZ)V
    invoke-static {v0, v1, v5}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$13(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    :sswitch_d
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 163
    .restart local v0    # "helper":Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
    # invokes: Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->onBackKeyEvent()V
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->access$14(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    goto/16 :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_5
        0x3e8 -> :sswitch_d
    .end sparse-switch
.end method
