.class public Lcom/google/android/finsky/adapters/DocumentGridItem;
.super Ljava/lang/Object;
.source "DocumentGridItem.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

.field private final mHeightInGridCells:I

.field private final mLayoutId:I

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mPromoImageWidth:I

.field private final mWidthInGridCells:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "widthInGridCells"
    .parameter "heightInGridCells"
    .parameter "layoutId"
    .parameter "gridItemType"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 117
    iput-object p3, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 118
    iput p4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    .line 119
    iput p5, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mHeightInGridCells:I

    .line 120
    iput p6, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mLayoutId:I

    .line 121
    iput-object p7, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    .line 122
    iput-object p8, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 123
    iput-object p9, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mCurrentPageUrl:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    .line 126
    return-void
.end method

.method public static create2x1PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .locals 10
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7f040106

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create4x2PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .locals 10
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 71
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x4

    const/4 v5, 0x2

    const v6, 0x7f040106

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSmallPromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .locals 10
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0x7f040107

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOCUMENT_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createSquarePromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;
    .locals 10
    .parameter "context"
    .parameter "navManager"
    .parameter "loader"
    .parameter "document"
    .parameter "currentPageUrl"

    .prologue
    const/4 v4, 0x2

    .line 87
    new-instance v0, Lcom/google/android/finsky/adapters/DocumentGridItem;

    const v6, 0x7f040108

    sget-object v7, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOC_DETAILS_WITH_REFLECTED_PROMO_2x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/adapters/DocumentGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;IIILcom/google/android/finsky/adapters/UnevenGridItemType;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .locals 12
    .parameter "view"
    .parameter "showCorpusStrip"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/DocumentGridItem$1;)V

    .line 154
    .local v11, holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    const v0, 0x7f080163

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 155
    const v0, 0x7f08001c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f08001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 157
    const v0, 0x7f080219

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f08001f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 160
    const v0, 0x7f080164

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->badge:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 161
    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 162
    const v0, 0x7f080155

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->cellContent:Landroid/view/View;

    .line 163
    const v0, 0x7f080083

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    .line 164
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 167
    .end local v11           #holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;

    .line 169
    .restart local v11       #holder:Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_1
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->creator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 181
    :cond_2
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    iget-object v3, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->badge:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 186
    :cond_3
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x0

    iget-object v2, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 190
    :cond_4
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setViewToFadeIn(Landroid/view/View;)V

    .line 192
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->thumbnailBitmapView:Lcom/google/android/finsky/layout/SmartThumbnailView;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 195
    :cond_5
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 196
    iget-object v1, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->cellContent:Landroid/view/View;

    iget-object v2, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->promoBitmapView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget v3, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getImageFromDocument(Lcom/google/android/finsky/api/model/Document;II[I)Lcom/google/android/finsky/remoting/protos/Doc$Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mPromoImageWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/adapters/DocumentGridItem;->bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V

    .line 202
    :cond_6
    if-eqz p2, :cond_7

    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v9

    .line 207
    .local v9, backendHintColor:I
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->corpusStrip:Landroid/view/View;

    const v1, -0x3f000001

    and-int/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 211
    .end local v9           #backendHintColor:I
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    .line 212
    .local v8, backend:I
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 219
    .local v10, contentDescription:Ljava/lang/String;
    :goto_0
    iget-object v0, v11, Lcom/google/android/finsky/adapters/DocumentGridItem$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    return-void

    .line 212
    .end local v10           #contentDescription:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method protected bindImage(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    .locals 16
    .parameter "content"
    .parameter "safeView"
    .parameter "urlToLoad"
    .parameter "temporaryDisplay"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "resizeView"

    .prologue
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 264
    .local v15, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-virtual {v15}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 272
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 275
    .local v6, fadeInAnimation:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v1, Lcom/google/android/finsky/adapters/DocumentGridItem$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/adapters/DocumentGridItem$1;-><init>(Lcom/google/android/finsky/adapters/DocumentGridItem;Landroid/graphics/Bitmap;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/animation/Animation;)V

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v14

    .line 290
    .local v14, newContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz p7, :cond_2

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move/from16 v0, p5

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 295
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v14}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 298
    .local v13, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 299
    if-nez v13, :cond_3

    const/4 v1, 0x4

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mHeightInGridCells:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mWidthInGridCells:I

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mGridItemType:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/finsky/adapters/DocumentGridItem;->mLayoutId:I

    return v0
.end method
