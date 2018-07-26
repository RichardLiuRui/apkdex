.class public Lcom/boJUF/mB/mB/pO/tP/uI;
.super Ljava/lang/Object;


# static fields
.field private static volatile IL:Lcom/boJUF/mB/mB/pO/tP/uI;

.field public static LA:Ljava/util/List;

.field private static Lx:Landroid/os/HandlerThread;

.field public static On:J

.field protected static TP:Landroid/os/Handler;

.field public static cp:J

.field public static na:Z

.field public static oC:Z


# instance fields
.field private VY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/boJUF/mB/mB/pO/tP/uI;->cp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/boJUF/mB/mB/pO/tP/uI;->On:J

    sput-object v2, Lcom/boJUF/mB/mB/pO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/tP/uI;

    sput-object v2, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    sput-object v2, Lcom/boJUF/mB/mB/pO/tP/uI;->TP:Landroid/os/Handler;

    sput-boolean v3, Lcom/boJUF/mB/mB/pO/tP/uI;->na:Z

    sput-boolean v3, Lcom/boJUF/mB/mB/pO/tP/uI;->oC:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miiPayHt"

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/tP/uI;->VY:Ljava/lang/String;

    return-void
.end method

.method public static LA()Lcom/boJUF/mB/mB/pO/tP/uI;
    .locals 2

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/tP/uI;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/pO/tP/uI;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/tP/uI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/boJUF/mB/mB/pO/tP/uI;

    invoke-direct {v0}, Lcom/boJUF/mB/mB/pO/tP/uI;-><init>()V

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/tP/uI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->IL:Lcom/boJUF/mB/mB/pO/tP/uI;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized LA(Lcom/boJUF/mB/mB/pO/mB/XQ;Ljava/util/List;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boJUF/mB/mB/pO/mB/XQ;

    iget-object v2, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    iget-object v3, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    iget-object v0, v0, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static On()V
    .locals 1

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final LA(I)V
    .locals 3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/uI;->On()V

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/tP/uI;->cp()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/boJUF/mB/mB/pO/tP/uI;->cp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/boJUF/mB/mB/pO/tP/uI;->On:J

    sput-boolean v2, Lcom/boJUF/mB/mB/pO/tP/uI;->na:Z

    sput-boolean v2, Lcom/boJUF/mB/mB/pO/tP/uI;->oC:Z

    return-void
.end method

.method protected final declared-synchronized LA(Lcom/boJUF/mB/mB/pO/mB/XQ;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/boJUF/mB/mB/pO/tP/uI;->LA(Lcom/boJUF/mB/mB/pO/mB/XQ;Ljava/util/List;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->LA:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cp()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->TP:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/tP/uI;->VY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_2
    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->TP:Landroid/os/Handler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/boJUF/mB/mB/pO/tP/uI;->Lx:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/boJUF/mB/mB/pO/tP/uI;->TP:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
