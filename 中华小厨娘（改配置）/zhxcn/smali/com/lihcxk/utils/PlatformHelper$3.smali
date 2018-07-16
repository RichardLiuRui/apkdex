.class Lcom/lihcxk/utils/PlatformHelper$3;
.super Landroid/os/Handler;
.source "PlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lihcxk/utils/PlatformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lihcxk/utils/PlatformHelper;


# direct methods
.method constructor <init>(Lcom/lihcxk/utils/PlatformHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lihcxk/utils/PlatformHelper$3;->this$0:Lcom/lihcxk/utils/PlatformHelper;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    sget-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->jcallVibrator(I)V

    .line 92
    return-void
.end method
