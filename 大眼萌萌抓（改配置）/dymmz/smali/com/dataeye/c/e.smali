.class Lcom/dataeye/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dataeye/c/k;


# instance fields
.field private final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dataeye/c/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcom/dataeye/c/a;->g()Lcom/dataeye/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dataeye/c/e;->a:Z

    invoke-static {v0, p2, v1}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/a;Landroid/database/sqlite/SQLiteDatabase;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/dataeye/c/b;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    :cond_0
    return-void
.end method
