.class public final synthetic Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/FakerAppAdapter;

.field public final synthetic f$1:Lcom/rebel/module/FakerAppAdapter$AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/FakerAppAdapter;Lcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/FakerAppAdapter;

    iput-object p2, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/rebel/module/FakerAppAdapter$AppInfo;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/rebel/module/FakerAppAdapter;

    iget-object v1, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/rebel/module/FakerAppAdapter$AppInfo;

    invoke-virtual {v0, v1, p1}, Lcom/rebel/module/FakerAppAdapter;->lambda$onBindViewHolder$1$com-src-module-FakerAppAdapter(Lcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
