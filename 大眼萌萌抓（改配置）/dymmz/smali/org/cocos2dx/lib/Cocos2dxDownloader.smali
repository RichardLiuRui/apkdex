.class public Lorg/cocos2dx/lib/Cocos2dxDownloader;
.super Ljava/lang/Object;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _httpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field private _id:I

.field private _taskMap:Ljava/util/HashMap;

.field private _tempFileNameSufix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/lib/Cocos2dxDownloader;)I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_id:I

    return v0
.end method

.method static synthetic access$1(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method static synthetic access$2(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_tempFileNameSufix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/lib/Cocos2dxDownloader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static cancelAllRequests(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V
    .locals 2
    .param p0, "downloader"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .prologue
    .line 276
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxDownloader$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public static createDownloader(IILjava/lang/String;)Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .locals 3
    .param p0, "id"    # I
    .param p1, "timeoutInSeconds"    # I
    .param p2, "tempFileNameSufix"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxDownloader;-><init>()V

    .line 207
    .local v0, "downloader":Lorg/cocos2dx/lib/Cocos2dxDownloader;
    iput p0, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_id:I

    .line 209
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(Z)V

    .line 210
    if-lez p1, :cond_0

    .line 211
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    mul-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 214
    :cond_0
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_httpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-class v1, Ljavax/net/ssl/SSLException;

    invoke-static {v1}, Lcom/loopj/android/http/AsyncHttpClient;->allowRetryExceptionClass(Ljava/lang/Class;)V

    .line 216
    iput-object p2, v0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_tempFileNameSufix:Ljava/lang/String;

    .line 217
    return-object v0
.end method

.method public static createTask(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "downloader"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .param p1, "id_"    # I
    .param p2, "url_"    # Ljava/lang/String;
    .param p3, "path_"    # Ljava/lang/String;

    .prologue
    .line 221
    move v0, p1

    .line 222
    .local v0, "id":I
    move-object v2, p2

    .line 223
    .local v2, "url":Ljava/lang/String;
    move-object v1, p3

    .line 225
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;

    invoke-direct {v4, v1, p0, v0, v2}, Lorg/cocos2dx/lib/Cocos2dxDownloader$3;-><init>(Ljava/lang/String;Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method


# virtual methods
.method native nativeOnFinish(IIILjava/lang/String;[B)V
.end method

.method native nativeOnProgress(IIJJJ)V
.end method

.method public onFinish(IILjava/lang/String;[B)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "errCode"    # I
    .param p3, "errStr"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    .line 194
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/cocos2dx/lib/DownloadTask;

    .line 195
    .local v6, "task":Lorg/cocos2dx/lib/DownloadTask;
    if-nez v6, :cond_0

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IILjava/lang/String;[B)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onProgress(IJJJ)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "downloadBytes"    # J
    .param p4, "downloadNow"    # J
    .param p6, "downloadTotal"    # J

    .prologue
    .line 172
    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cocos2dx/lib/DownloadTask;

    .line 173
    .local v2, "task":Lorg/cocos2dx/lib/DownloadTask;
    if-eqz v2, :cond_0

    .line 174
    iput-wide p2, v2, Lorg/cocos2dx/lib/DownloadTask;->bytesReceived:J

    .line 175
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lorg/cocos2dx/lib/DownloadTask;->totalBytesReceived:J

    .line 176
    move-wide/from16 v0, p6

    iput-wide v0, v2, Lorg/cocos2dx/lib/DownloadTask;->totalBytesExpected:J

    .line 178
    :cond_0
    new-instance v3, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Lorg/cocos2dx/lib/Cocos2dxDownloader$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;IJJJ)V

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public onStart(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 187
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxDownloader;->_taskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/DownloadTask;

    .line 188
    .local v0, "task":Lorg/cocos2dx/lib/DownloadTask;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lorg/cocos2dx/lib/DownloadTask;->resetStatus()V

    .line 191
    :cond_0
    return-void
.end method
