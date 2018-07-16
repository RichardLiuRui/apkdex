.class public Lorg/cocos2dx/cpp/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# static fields
.field public static isShowExit:I


# instance fields
.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method

.method public static setIsShowExitDialog(I)V
    .locals 0
    .param p0, "isShowExit"    # I

    .prologue
    .line 71
    sput p0, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {p0}, Lcom/allknowboy/utils/PlatformHelper;->initPlatformHelper(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 31
    invoke-static {}, Lcom/allknowboy/utils/PlatformHelper;->getInstance()Lcom/allknowboy/utils/PlatformHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/allknowboy/utils/PlatformHelper;->initPay(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dataeye/DCAgent;->setReportMode(I)V

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 92
    invoke-static {}, Lcom/daily2fun/pay/union/PayInterFace;->onDestroy()V

    .line 93
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 38
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 39
    sget v1, Lorg/cocos2dx/cpp/AppActivity;->isShowExit:I

    if-nez v1, :cond_0

    .line 64
    :goto_0
    return v0

    .line 43
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 45
    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    const v2, 0x7f040002

    .line 47
    new-instance v3, Lorg/cocos2dx/cpp/AppActivity$1;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/AppActivity$1;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 46
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 53
    const v2, 0x7f040001

    .line 54
    new-instance v3, Lorg/cocos2dx/cpp/AppActivity$2;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/AppActivity$2;-><init>(Lorg/cocos2dx/cpp/AppActivity;)V

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 85
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onPause(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 78
    invoke-static {p0}, Lcom/dataeye/DCAgent;->onResume(Landroid/content/Context;)V

    .line 79
    return-void
.end method
