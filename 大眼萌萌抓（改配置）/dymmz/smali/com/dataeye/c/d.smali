.class Lcom/dataeye/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dataeye/c/k;


# instance fields
.field private final synthetic a:Lcom/dataeye/a/a;

.field private final synthetic b:J


# direct methods
.method constructor <init>(Lcom/dataeye/a/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/dataeye/c/d;->a:Lcom/dataeye/a/a;

    iput-wide p2, p0, Lcom/dataeye/c/d;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/dataeye/c/d;->a:Lcom/dataeye/a/a;

    iget-wide v2, p0, Lcom/dataeye/c/d;->b:J

    move-object v4, p2

    move v6, v5

    invoke-static/range {v1 .. v6}, Lcom/dataeye/c/b;->a(Lcom/dataeye/a/a;JLandroid/database/sqlite/SQLiteDatabase;ZZ)Lcom/dataeye/a/e;

    move-result-object v0

    invoke-static {}, Lcom/dataeye/c/s;->a()Lcom/dataeye/c/s;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/dataeye/c/s;->a(Lcom/dataeye/b/f;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {}, Lcom/dataeye/c/b;->l()V

    return-void
.end method
