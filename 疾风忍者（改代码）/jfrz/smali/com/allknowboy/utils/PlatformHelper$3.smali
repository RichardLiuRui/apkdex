.class Lcom/allknowboy/utils/PlatformHelper$3;
.super Landroid/os/Handler;
.source "PlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allknowboy/utils/PlatformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allknowboy/utils/PlatformHelper;


# direct methods
.method constructor <init>(Lcom/allknowboy/utils/PlatformHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/allknowboy/utils/PlatformHelper$3;->this$0:Lcom/allknowboy/utils/PlatformHelper;

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->jcallVibrator(I)V

    .line 93
    return-void
.end method
