.class Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;
.super Ljava/lang/Object;
.source "GirlPhotos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/GirlPhotos$1$2;->payResult(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/cocos2dx/cpp/GirlPhotos$1$2;

.field private final synthetic val$result:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/GirlPhotos$1$2;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;->this$2:Lorg/cocos2dx/cpp/GirlPhotos$1$2;

    iput p2, p0, Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;->val$result:I

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 193
    iget v0, p0, Lorg/cocos2dx/cpp/GirlPhotos$1$2$1;->val$result:I

    if-ne v0, v1, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/cocos2dx/cpp/GirlPhotos;->callCPP(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-static {v1}, Lorg/cocos2dx/cpp/GirlPhotos;->callCPP(I)V

    goto :goto_0
.end method
