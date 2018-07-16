.class Lcom/dataeye/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dataeye/c/k;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-static {p2}, Lcom/dataeye/c/b;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/dataeye/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_0
    return-void
.end method
