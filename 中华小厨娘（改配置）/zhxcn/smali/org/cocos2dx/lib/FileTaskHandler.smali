.class Lorg/cocos2dx/lib/FileTaskHandler;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "Cocos2dxDownloader.java"


# instance fields
.field private _downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

.field _finalFile:Ljava/io/File;

.field _id:I

.field private _initFileLen:J

.field private _lastBytesWritten:J


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxDownloader;ILjava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "downloader"    # Lorg/cocos2dx/lib/Cocos2dxDownloader;
    .param p2, "id"    # I
    .param p3, "temp"    # Ljava/io/File;
    .param p4, "finalFile"    # Ljava/io/File;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    .line 81
    iput-object p4, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    .line 82
    iput-object p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    .line 83
    iput p2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    .line 84
    invoke-virtual {p0}, Lorg/cocos2dx/lib/FileTaskHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_initFileLen:J

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    .line 86
    return-void
.end method


# virtual methods
.method LogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "Cocos2dxDownloader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure(i:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " headers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {p0, v1}, Lorg/cocos2dx/lib/FileTaskHandler;->LogD(Ljava/lang/String;)V

    .line 118
    const-string v0, ""

    .line 119
    .local v0, "errStr":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    .line 123
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    invoke-virtual {v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->dequeue()Ljava/lang/Runnable;

    move-result-object v0

    .line 108
    .local v0, "taskRunnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 8
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    sub-long v2, p1, v0

    .line 93
    .local v2, "dlBytes":J
    iget-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_initFileLen:J

    add-long v4, p1, v0

    .line 94
    .local v4, "dlNow":J
    iget-wide v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_initFileLen:J

    add-long v6, p3, v0

    .line 95
    .local v6, "dlTotal":J
    iget-object v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    invoke-virtual/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onProgress(IJJJ)V

    .line 96
    iput-wide p1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_lastBytesWritten:J

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v1, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onStart(I)V

    .line 102
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSuccess(i:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " headers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/cocos2dx/lib/FileTaskHandler;->LogD(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 132
    .local v0, "errStr":Ljava/lang/String;
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dest file is directory:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_downloader:Lorg/cocos2dx/lib/Cocos2dxDownloader;

    iget v3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/cocos2dx/lib/Cocos2dxDownloader;->onFinish(IILjava/lang/String;[B)V

    .line 149
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t remove old file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2dx/lib/FileTaskHandler;->getTargetFile()Ljava/io/File;

    move-result-object v1

    .line 146
    .local v1, "tempFile":Ljava/io/File;
    iget-object v2, p0, Lorg/cocos2dx/lib/FileTaskHandler;->_finalFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method
