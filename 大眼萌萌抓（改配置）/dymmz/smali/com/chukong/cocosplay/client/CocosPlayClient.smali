.class public Lcom/chukong/cocosplay/client/CocosPlayClient;
.super Ljava/lang/Object;
.source "CocosPlayClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public static native getSearchPaths()[Ljava/lang/String;
.end method

.method public static init(Landroid/app/Activity;Z)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isDemo"    # Z

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static isDemo()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotifyFileLoadedEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public static notifyFileLoaded(Ljava/lang/String;)V
    .locals 0
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public static updateAssets(Ljava/lang/String;)V
    .locals 0
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method
