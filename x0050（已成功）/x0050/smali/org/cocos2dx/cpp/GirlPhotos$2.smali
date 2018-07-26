.class Lorg/cocos2dx/cpp/GirlPhotos$2;
.super Ljava/lang/Object;
.source "GirlPhotos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/GirlPhotos;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/GirlPhotos;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/GirlPhotos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$2;->this$0:Lorg/cocos2dx/cpp/GirlPhotos;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/union/sdk/UnionPay;->getInstance()Lcom/union/sdk/UnionPay;

    move-result-object v1

    # getter for: Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/cpp/GirlPhotos;->access$0()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/union/sdk/UnionPay;->init(Landroid/app/Activity;)V

    .line 69
    invoke-static {}, Lcom/union/sdk/UnionPay;->getInstance()Lcom/union/sdk/UnionPay;

    move-result-object v0

    # getter for: Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/cpp/GirlPhotos;->access$0()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lorg/cocos2dx/cpp/GirlPhotos$2$1;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/GirlPhotos$2$1;-><init>(Lorg/cocos2dx/cpp/GirlPhotos$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/union/sdk/UnionPay;->payHidden(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V

    .line 75
    return-void
.end method
