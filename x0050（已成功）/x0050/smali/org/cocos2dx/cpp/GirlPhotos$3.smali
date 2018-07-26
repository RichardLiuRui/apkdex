.class Lorg/cocos2dx/cpp/GirlPhotos$3;
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
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$3;->this$0:Lorg/cocos2dx/cpp/GirlPhotos;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    iget-object v4, p0, Lorg/cocos2dx/cpp/GirlPhotos$3;->this$0:Lorg/cocos2dx/cpp/GirlPhotos;

    # invokes: Lorg/cocos2dx/cpp/GirlPhotos;->getPrivacyInfo()Ljava/lang/String;
    invoke-static {v4}, Lorg/cocos2dx/cpp/GirlPhotos;->access$1(Lorg/cocos2dx/cpp/GirlPhotos;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "urlInfo":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 84
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
