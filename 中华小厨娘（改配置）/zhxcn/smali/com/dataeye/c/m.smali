.class Lcom/dataeye/c/m;
.super Lcom/dataeye/c/l;


# direct methods
.method public constructor <init>(Lcom/dataeye/c/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dataeye/c/l;-><init>(Lcom/dataeye/c/l;)V

    iput-object p1, p0, Lcom/dataeye/c/m;->a:Lcom/dataeye/c/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method
