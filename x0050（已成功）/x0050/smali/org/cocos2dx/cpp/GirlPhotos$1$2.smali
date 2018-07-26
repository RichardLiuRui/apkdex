.class Lorg/cocos2dx/cpp/GirlPhotos$1$2;
.super Ljava/lang/Object;
.source "GirlPhotos.java"

# interfaces
.implements Lcom/union/sdk/UnionPay$PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/GirlPhotos$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/cpp/GirlPhotos$1;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/GirlPhotos$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$1$2;->this$1:Lorg/cocos2dx/cpp/GirlPhotos$1;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(IILjava/lang/String;)V
    .locals 2
    .param p1, "payMent"    # I
    .param p2, "result"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;

    invoke-direct {v1, p0, p2}, Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;-><init>(Lorg/cocos2dx/cpp/GirlPhotos$1$2;I)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method
