.class public Lcom/testin/agent/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static b:Ljava/util/concurrent/locks/ReentrantLock;

.field private static f:Lcom/testin/agent/a/g;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/a/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/testin/agent/a/g;
    .locals 2

    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/a/g;

    invoke-direct {v0, p0}, Lcom/testin/agent/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TestinCacheUploader"

    const-string v1, "CacheUploader is stopped"

    invoke-static {v0, v1}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    iget-object v0, v0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    iget-object v0, v0, Lcom/testin/agent/a/g;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const-string v0, "TestinCacheUploader"

    const-string v1, "CacheUploader stopped"

    invoke-static {v0, v1}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "/cpi/crash"

    invoke-static {v1}, Lcom/testin/agent/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "submore"

    const/16 v3, 0x7530

    invoke-static {v1, p1, v2, v3}, Lcom/testin/agent/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "en"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/testin/agent/a/g;->a(Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Lcom/testin/agent/b/b;

    invoke-direct {v1, p0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/testin/agent/b/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Lcom/testin/agent/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/testin/agent/b/b;->f()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/testin/agent/b/a;

    const-string v4, "exception"

    invoke-static {v0}, Lcom/testin/agent/d/a;->b(Lcom/testin/agent/b/a;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/testin/agent/c/g;

    invoke-direct {v5}, Lcom/testin/agent/c/g;-><init>()V

    invoke-virtual {v5, v4}, Lcom/testin/agent/c/g;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/testin/agent/c/g;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/testin/agent/c/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/testin/agent/b/b;->g()V

    goto :goto_1
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TestinCacheUploader"

    const-string v1, "CacheUploader is running"

    invoke-static {v0, v1}, Lcom/testin/agent/base/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/testin/agent/a/g;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/a/g;->e:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private d()V
    .locals 8

    new-instance v3, Lcom/testin/agent/b/b;

    iget-object v0, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/testin/agent/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/testin/agent/b/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/testin/agent/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/testin/agent/b/b;->e()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/testin/agent/b/a;

    const-string v2, ""

    const-string v1, ""

    new-instance v6, Lcom/testin/agent/c/g;

    invoke-direct {v6}, Lcom/testin/agent/c/g;-><init>()V

    invoke-virtual {v0}, Lcom/testin/agent/b/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Lcom/testin/agent/c/g;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/testin/agent/c/g;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/testin/agent/c/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :pswitch_0
    const-string v1, "exception"

    invoke-static {v0}, Lcom/testin/agent/d/a;->b(Lcom/testin/agent/b/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    const-string v1, "submit"

    invoke-static {v0}, Lcom/testin/agent/d/a;->a(Lcom/testin/agent/b/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/testin/agent/b/b;->h()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 4

    new-instance v1, Lcom/testin/agent/b/c;

    iget-object v0, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/testin/agent/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/testin/agent/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/testin/agent/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/testin/agent/b/c;->d()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/testin/agent/c/g;

    invoke-virtual {v0}, Lcom/testin/agent/c/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/testin/agent/b/c;->e()V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    invoke-direct {v0}, Lcom/testin/agent/a/g;->c()V

    const-string v0, "TestinCacheUploader"

    const-string v1, "CacheUploader started"

    invoke-static {v0, v1}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 4

    sget-object v0, Lcom/testin/agent/a/g;->f:Lcom/testin/agent/a/g;

    iget-object v0, v0, Lcom/testin/agent/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/testin/agent/a/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/testin/agent/d/d;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/testin/agent/a/g;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/testin/agent/a/g;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/testin/agent/a/g;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    sget-object v0, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "TestinCacheUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "an error occured, because"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/testin/agent/base/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/a/g;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "TestinCacheUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "an error occured, because"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/testin/agent/base/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Current network is disconnected or disabled"

    invoke-static {v0}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/testin/agent/a/g;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
