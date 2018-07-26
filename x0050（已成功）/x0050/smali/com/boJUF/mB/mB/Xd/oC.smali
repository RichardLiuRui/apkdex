.class public Lcom/boJUF/mB/mB/Xd/oC;
.super Ljava/lang/Object;


# static fields
.field private static volatile LA:Lcom/boJUF/mB/mB/Xd/uI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/boJUF/mB/mB/Xd/oC;->LA:Lcom/boJUF/mB/mB/Xd/uI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;
    .locals 5

    sget-object v0, Lcom/boJUF/mB/mB/Xd/oC;->LA:Lcom/boJUF/mB/mB/Xd/uI;

    if-nez v0, :cond_1

    const-class v1, Lcom/boJUF/mB/mB/Xd/oC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/boJUF/mB/mB/Xd/oC;->LA:Lcom/boJUF/mB/mB/Xd/uI;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/boJUF/mB/mB/VD/mB/Ke;->LA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/boJUF/mB/mB/Xd/uI;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/boJUF/mB/mB/Xd/uI;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/boJUF/mB/mB/Xd/oC;->LA:Lcom/boJUF/mB/mB/Xd/uI;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/boJUF/mB/mB/Xd/oC;->LA:Lcom/boJUF/mB/mB/Xd/uI;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
