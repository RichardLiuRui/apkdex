.class abstract Lcom/dataeye/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcom/dataeye/c/k;

.field protected b:Landroid/database/sqlite/SQLiteDatabase;

.field protected c:Landroid/database/Cursor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dataeye/c/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/dataeye/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/dataeye/c/s;->c()Lcom/dataeye/c/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dataeye/c/r;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/dataeye/c/s;->c()Lcom/dataeye/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dataeye/c/r;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/dataeye/c/l;->a:Lcom/dataeye/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dataeye/c/l;->a:Lcom/dataeye/c/k;

    iget-object v1, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/dataeye/c/l;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v1, v2}, Lcom/dataeye/c/k;->a(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Lcom/dataeye/c/h;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/dataeye/c/l;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/c/l;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/dataeye/c/l;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/dataeye/c/h;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/dataeye/c/l;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1}, Lcom/dataeye/c/l;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/dataeye/c/h;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v1, p0, Lcom/dataeye/c/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/dataeye/c/l;->c:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2}, Lcom/dataeye/c/l;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method
