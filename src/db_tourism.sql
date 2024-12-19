-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 19, 2024 lúc 12:23 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_tourism`
--
CREATE DATABASE IF NOT EXISTS `db_tourism` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `db_tourism`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `sender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_type` int UNSIGNED NOT NULL,
  `id_province` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `price`, `description`, `status`, `id_type`, `id_province`, `created_at`, `updated_at`) VALUES
(1, 'Biển Ba Động', 'Xã Trường Long Hòa, thị xã Duyên Hải, tỉnh Trà Vinh', 'Miễn phí', '<p>Biển Ba Động là danh thắng và là khu du lịch nổi tiếng thuộc xã Trường Long Hòa (thị xã Duyên Hải, tỉnh Trà Vinh), cách trung tâm thành phố Trà Vinh 50 km về hướng đông nam và cách thị xã Duyên Hải 10 km về hướng đông. Khu du lịch này có vị trí nằm giữa hai cửa biển Cung Hầu (sông Tiền), Định An (sông Hậu), nhìn chính diện ra biển Đông.</p><p>Vùng biển Đông ven bờ các tỉnh Đồng bằng sông Cửu Long là vùng biển phù sa do nhiều cửa sông lớn nhỏ đổ ra nên phần lớn là bãi bùn, nước không trong. Trong đó, biển Ba Động là khu vực hiếm hoi ở miền Tây Nam bộ được thiên nhiên hào phóng ban tặng cho một bãi cát dài hơn 10 km từ ấp Nhà Mát tới ấp Cồn Trứng. Do độ dốc thoai thoải, khi nước thủy triều xuống, bãi cát phơi ra hàng trăm mét, từ bờ xuống tới mép nước.</p><p>Cũng do nằm trong khu vực biển phù sa nên bãi cát Ba Động không trắng muốt hay vàng óng ả, nước biển Ba Động cũng không thể trong xanh như với các bãi biển Nha Trang hay Vũng Tàu. Tuy nhiên, dọc bờ biển Đông, từ Gò Công tới Cà Mau, Ba Động có bãi cát đẹp, nước biển khá trong, nhất là vào những tháng sau Tết Nguyên đán, sóng yên biển lặng, hình thành khu du lịch biển được nhiều người ưa chuộng.</p><p>Dừng chân tại khu du lịch Biển Ba Động, du khách sẽ có dịp tìm hiểu bề dày lịch sử, chiều sâu văn hóa của vùng đất ven biển Trường Long Hòa, Duyên Hải, Trà Vinh. Gần 3 thế kỷ trước, những ngư dân vùng Bình Thuận vào định cư tại đây đã mở ra nghề đi biển tạo cơm ăn áo mặc và cũng chính họ đã mang theo địa danh Ba Động, tín ngưỡng thờ Bà Cố Hỷ cho vùng đất mới. Những năm tháng quân tướng chúa Nguyễn Ánh trốn chạy sự truy đuổi của nghĩa quân Tây Sơn vào cuối thế kỷ XVIII đã để lại các tên làng có từ tố “Long” như Trường Long Hòa, Long Vĩnh, Long Hữu, Long Toàn… và để lại luôn ngôi mộ Quận chúa như một bí ẩn lịch sử mấy trăm năm.</p>', 0, 3, 4, '2024-12-12 18:37:29', '2024-12-18 06:15:16'),
(2, 'Ao Bà Om', 'Phường 8, thành phố Trà Vinh, tỉnh Trà Vinh', '', '<p>Nhắc tới Trà Vinh, người ta nghĩ đến mảnh đất của những ngôi chùa Khmer cổ kính cùng những di tích lịch sử mang nhiều truyền thuyết huyền thoại, gắn liền với hành trình khai phá, gầy dựng phương Nam. Di tích ao Bà Om ngàn năm soi bóng cổ tự là một trong những niềm tự hào của người dân nơi đây.</p><p>Ao Bà Om, hay Ao Vuông nằm cạnh Quốc lộ 53, thuộc phường 8 thành phố Trà Vinh (trước đây là ấp Tà Cụ, xã Nguyệt Hóa, huyện Châu Thành), cách trung tâm thành phố Trà Vinh khoảng 5 km về phía Tây Nam.</p><p>Du lịch Trà Vinh đến đây, bạn không đơn thuần chỉ được chiêm ngưỡng vẻ đẹp thơ mộng của thiên nhiên mà còn được cảm nhận rõ nét hơn những giá trị văn hoá độc đáo của vùng đất Trà Vinh qua câu chuyện mang đậm màu sắc Khmer Nam Bộ…</p><p>Ấn tượng đầu tiên khi tới thăm ao Bà Om là cảm giác mát mẻ trước cảnh trời nước xanh biếc một màu. Ao có hình chữ nhật, rộng 300m, dài 500m (vì gần với hình vuông nên còn được gọi là Ao Vuông) khách sẽ bất ngờ vì ao lớn quá, phải gọi là hồ thì đúng hơn.</p><p>Bao bọc xung quanh trên bờ ao là rừng cây cổ thụ, đa số là cây sao, cây dầu hàng trăm năm tuổi, có rễ xù xì trồi lên mặt đất cả mét thành những hình thù lạ mắt bốn mùa rợp bóng thâm u tạo không gian thanh bình, yên tĩnh.</p><p>Có bộ rễ lớn đến nỗi có thể tạo thành cái hang độc nhất vô nhị, trẻ con có thể chui vào vui chơi. Lại có bộ rễ cây trở thành ghế ngồi nghỉ chân của khách. Người bản xứ lý giải rằng, những bộ rễ đồ sộ, quấn lấy nhau và nằm trên cao cách mặt đất như ngày nay là do khu đất xung quanh ao bị sụt lún xuống thấp, rễ cây lộ thiên và phát triển theo thời gian.</p>', 2, 4, 4, '2024-12-12 18:56:57', '2024-12-15 06:14:57'),
(3, 'Đền thờ Chủ tích Hồ Chí Minh', 'Ấp Vĩnh Hội, xã Long Đức, thành phố Trà Vinh, tỉnh Trà Vinh', 'Miễn phí', '<p>Đền thờ Chủ tịch Hồ Chí Minh, người dân địa phương vẫn quen gọi là Đền thờ Bác Hồ, nhà nghiên cứu Trần Bạch Đằng khái quát thành biểu tượng “Công trình của Trái tim” bởi ý nghĩa thiêng liêng của việc hình thành, quá trình chiến đấu bảo vệ ngoan cường và giá trị tinh thần của ngôi đền trong đời sống tinh thần của Đảng bộ, quân dân tỉnh Trà Vinh.</p><p>Ngôi đền tọa lạc tại ấp Vĩnh Hội, xã Long Đức, thành phố Trà Vinh, cách trung tâm tỉnh lỵ Trà Vinh hơn 4 km về phía bắc. Đền thờ Chủ tịch Hồ Chí Minh tỉnh Trà Vinh đã được Bộ Văn hóa Thông tin, nay là Bộ Văn hóa, Thể thao và Du lịch xếp hạng di tích lịch sử – văn hóa cấp quốc gia vào năm 1989.</p><p>Khu di tích đền thờ Bác Hồ rộng 5,4 ha với các hạng mục chính như: Đền thờ Bác Hồ, nhà trưng bày thân thế sự nghiệp Chủ tịch Hồ Chí Minh, khuôn viên cây xanh, ao cá, khu vui chơi cắm trại…và đặc biệt là mô hình Nhà sàn Bác Hồ được thiết kế, in sao và lắp khoa học với tỉ lệ 97% theo nguyên bản nhà sàn Bác Hồ tại Phủ Chủ tịch ở thủ đô Hà Nội.</p><p>Sau ngày thống nhất đất nước, đáp ứng nguyện vọng của nhân dân, Đảng bộ, chính quyền tỉnh Trà Vinh đã nhiều lần trùng tu, tôn tạo cũng như xây dựng mới các hạng mục theo quy hoạch của một khu di tích lịch sử – văn hóa gắn với chức năng du lịch. Toàn bộ diện tích khu di tích là gần 04 ha, bao gồm các công trình chính là Vỏ bao che, Nhà Trưng bày, công viên…</p><p>Nép mình dưới những lũy tre ngày nào che chở ngôi Đền, Vỏ bao che được thiết kế theo dạng một đóa sen cách điệu màu hồng tươi. Bên trong, ngôi Đền được phục chế lại theo đúng nguyên trạng khiêm tốn, đơn sơ, với kích thước 4 x 4 m bằng khung gỗ, mái lợp lá, vách tôn. Tại đây, mỗi dịp lễ tết, nhiều đoàn đại biểu đại diện lãnh đạo tỉnh, lực lượng vũ trang và đồng bào các giới trong tỉnh Trà Vinh đến đặt vòng hoa, thắp nén hương thơm, thành kính báo cáo cùng Bác những thành tựu mới nhất của mình.</p><p>Nhà Trưng bày được xây dựng theo kiến trúc truyền thống dân tộc. Trong đó, nhiều hiện vật, hình ảnh, tài liệu giúp người tham quan hiểu được một cách khái quát về cuộc đời hoạt động của Bác; truyền thống đấu tranh kiên cường, bất khuất trong kháng chiến và những thành tựu trong công cuộc đổi mới của Đảng bộ, nhân dân tỉnh Trà Vinh; quá trình xây dựng và chiến đấu bảo vệ ngôi Đền.</p>', 2, 4, 4, '2024-12-15 06:45:24', '2024-12-18 06:16:58'),
(4, 'Chùa Âng', 'Phường 8, thành phố Trà Vinh, tỉnh Trà Vinh', 'Miễn phí', '<p>Chùa Âng còn được gọi là Wat Angkor Raig Borei theo ngôn ngữ Paly là một ngôi chùa cổ tại thành phố Trà Vinh. Nằm trong cụm danh thắng nổi tiếng xứ dừa sáp Ao Bà Om cùng bảo tàng văn hóa dân tộc Khmer, chùa Âng là điểm du lịch nổi bật trên bản đồ du lịch Trà Vinh mà bạn không thể bỏ qua.</p><p>Kiến trúc của chùa Âng Trà Vinh gây ấn tượng với những tòa nhà hình tháp vươn thẳng lên trời, tạo nên vẻ đẹp nguy nga, tráng lệ và vô cùng trang nghiêm. Từ xa nhìn vào, bạn sẽ bị cuốn hút bởi vẻ đẹp cổ kính và uy nghi của ngôi chùa cổ hơn 1000 năm tuổi này.</p><p>Theo sử sách, chùa Âng được xây dựng vào thế kỷ thứ 10 và trải qua nhiều công đoạn trùng tu và sửa chữa từ đó đến nay. Mặc dù đã trải qua nhiều lần sửa chữa và xây mới các công trình phụ, chánh điện của chùa vẫn giữ được nguyên trạng từ buổi đầu mới hình thành.</p><p>Chùa Âng Trà Vinh không chỉ là một công trình kiến trúc cổ kính mà còn là nơi lưu giữ nghệ thuật với nhiều tác phẩm tượng thần, tiên nữ, tượng chằn, chim thần và các hình ảnh khác liên quan đến Phật Thích Ca. Kiến trúc và trang trí của chùa Âng đều phản ánh đậm bản sắc văn hóa tâm linh và tôn giáo của đồng bào Khmer Nam Bộ.</p><p>Với vị trí đắc địa và vẻ đẹp lôi cuốn, chùa Âng là một điểm đến không thể bỏ qua cho những người muốn khám phá văn hóa và lịch sử độc đáo của tỉnh Trà Vinh. Đến thăm chùa Âng, bạn sẽ được trải nghiệm không khí tâm linh và thư thái giữa không gian truyền thống Khmer và nét hiện đại của thành phố Trà Vinh.</p><p>Chùa Âng nổi bật với phong cách kiến trúc chùa Khmer Nam Bộ nằm trên khuôn viên rộng 4ha, được bao phủ bởi cây cổ thụ và hào nước sâu bao bọc. Cổng chùa gồm 3 ngọn tháp với lối trang trí bằng nghệ thuật truyền thống Khmer, biến nơi đây trở thành tuyệt tác điêu khắc kỳ công và tinh xảo. Những tượng chằn, tiên nữ và chim thần được trang trí trên cổng chùa mang đến một diện mạo tráng lệ làm nổi bật vẻ đẹp văn hóa và tâm linh của ngôi chùa.</p>', 0, 2, 4, '2024-12-15 06:48:36', '2024-12-18 06:17:22'),
(5, 'Núi Cô Tô', 'Xã Cô Tô, Huyện Tri Tôn, tỉnh An Giang', 'Miễn phí', '<p>Núi Cô Tô gọi tắt là núi Tô, còn có tên gọi khác là Phụng Hoàng sơn, tên Khmer là Phnom-Ktô, nằm trong dãy Thất Sơn, thuộc xã Cô Tô, Huyện Tri Tôn (An Giang).</p><p>Núi Cô Tô có chiều cao 614m, dài 5.800m và rộng 3.700m, nơi đây được tạo hóa ban tặng hàng trăm hệ thống hang động ngầm rộng lớn và vững chắc, đây cũng chính là điểm thu hút hàng ngàn lượt du khách đến tham quan mỗi năm.</p><p>Đến với Cô Tô, du khách sẽ được lắng nghe câu truyện truyền thuyết lý thú được người dân lưu truyền hàng trăm năm qua, rằng các nàng tiên nữ thường hạ phàm xuống vùng núi Thất Sơn những đêm trăng sáng để dạo chơi và vui đùa. Một hôm các nàng chơi trò ném đá và sáng hôm sau nơi ấy xuất hiện một ngọn núi nhỏ, đá chồng chất lên nhau với muôn hình thù hấp dẫn, đó chính là Cô Tô ngày nay. Một giả định khác không gắn với truyền thuyết là do núi có hình dáng giống như cái tô lật úp, nên gọi là núi Tô.</p><p>Nằm giữa những cánh đồng bao la, bát ngát, ngọn núi Cô Tô khoác trên mình vẻ đẹp hoang sơ, kỳ vĩ say đắm lòng người. Những ngôi nhà được xây dựng trên các vách đá dựng đứng, từng rặng cây đung đưa theo gió như cơn sóng biển đang gợn từng cơn, đem lại khí hậu mát mẻ quanh năm. Khi đặt chân đến nơi bạn còn không khỏi ngỡ ngàng trước khung cảnh bao la rộng lớn và núi non hùng vĩ trước mặt.</p><p>Núi Cô Tô không có một địa chỉ chính xác trên bản đồ như những chung cư hay hàng quán. Tuy nhiên, bạn đừng lo rằng không tìm được, xét về kích cỡ khổng lồ của chúng thì nhìn từ xa thôi cũng đủ để thấy rồi. Để dễ dàng hơn, bắt đầu từ hướng Long Xuyên khách có thể đi theo đường tỉnh lộ 943 xuôi về thị trấn Núi Sập. Từ đây hỏi đường đến núi Cô Tô sẽ rất dễ dàng. Hoặc bạn cũng có thể đi con đường khác. Rất nhiều hướng đều dẫn tới núi, tuy nhiên với tỉnh lộ 943 thì khách sẽ được tận hưởng nhiều trải nghiệm thú vị hơn.</p>', 2, 1, 7, '2024-12-15 06:49:55', '2024-12-18 06:17:49'),
(6, 'Bến Ninh Kiều', 'Phường Tân An, quận Ninh Kiều, thành phố Cần Thơ', 'Miễn phí', '<p>Bến nước này nằm ven bờ phải sông Hậu, ở phường Tân An, quận Ninh Kiều, thành phố Cần Thơ. Nó nằm giữa ngã ba sông Hậu và sông Cần Thơ nên từng được coi là bến tàu giao thương hàng hóa trong thời Pháp thuộc. Cho tới thời điểm hiện tại, người ta vẫn chưa tìm được tài liệu chính thức nào ghi chép về lịch sử hình thành của địa điểm này. Chỉ biết rằng theo một giai thoại, nơi này từng là một bến sông tại đầu chợ Cần Thơ.</p><p>Khi Nguyễn Ánh di chuyển vào trong Nam và đi qua dòng sông Hậu, ông đã nghe thấy tiếng ngâm thơ và câu hò ngọt ngào trong tiếng sáo, từ đó đặt tên con sông ấy là Cầm Thi Giang. Đến năm 1957, tỉnh trưởng Phong Dinh đã đề nghị đổi tên khu vực bến thành Ninh Kiều, gắn liền với chiến thắng oai hùng của nghĩa quân Lam Sơn. Tháng 8 năm 1958, tên gọi bến Ninh Kiều chính thức được công nhận và in sâu vào tâm trí của người dân cho đến tận ngày nay.</p><p>Bến nước này sở hữu khung cảnh sông nước hữu tình với những nét văn hóa đặc trưng của vùng sông nước. Nó được coi là biểu tượng của thành phố Cần Thơ, gắn liền với lịch sử phát triển hào hùng của địa phương. Tính đến nay, bến tàu được đầu tư thành công viên Ninh Kiều với tổng diện tích lên đến 7.000m2. Đây là địa điểm du lịch nổi tiếng ở Cần Thơ, bao gồm hàng loạt những điểm vui chơi và tham quan nổi tiếng.</p><p>Khí hậu ở Cần Thơ vô cùng mát mẻ và dễ chịu nên bạn có thể đến đây vào bất kỳ thời điểm nào trong năm. Tuy nhiên, để chuyến đi được thuận lợi nhất, bạn nên lựa chọn dịp mùa khô, từ tháng 12 đến tháng 4 năm sau. Ngoài ra, nếu muốn khám phá những lễ hội đặc sắc ở địa phương, bạn nên đến bến nước Ninh Kiều vào tháng Tư hoặc tháng Chạp. Những lễ hội nhộn nhịp như lễ Thượng Điền và lễ Hạ Điền chắc chắn sẽ đem đến cho bạn nhiều trải nghiệm thú vị.</p>', 2, 1, 9, '2024-12-15 06:51:53', '2024-12-18 06:18:07'),
(7, 'Chợ nổi Trà Ôn', 'Số 44 đường Trưng Trắc, Xã Lục Sĩ Thành, Huyện Trà Ôn, Tỉnh Vĩnh Long', 'Miễn phí', '<p>Chợ nổi Trà Ôn nằm ở huyện Trà Ôn, tỉnh Vĩnh Long. Chợ cách trung tâm thành phố Vĩnh Long khoảng chừng 40km và cách thành phố Hồ Chí Minh khoảng 162km. Tùy theo điểm xuất phát và nhu cầu, bạn có thể đến đây bằng phương tiện xe máy, xe khách hay máy bay.</p><p>Tương tự như nhiều chợ nổi khác ở miền Tây, chợ nổi Trà Ôn hoạt động từ rất sớm, bắt đầu từ 3 – 4 giờ sáng và kết thúc lúc 11 giờ trưa. Theo kinh nghiệm thì bạn nên đi chợ vào lúc 5 – 6 giờ sáng. Đây là thời điểm lý tưởng này để bạn đến đây tham quan.</p><p>Từ 5 - 6 giờ sáng là khung giờ chợ nổi Trà Ôn hoạt động sôi nổi nhất. Không khí mua bán ở thời điểm này vô cùng tấp nập, nhộn nhịp. Bên cạnh đó, thời tiết sáng sớm cũng cực kỳ mát mẻ. Rất thoải mái để bạn có thể dạo một vòng quanh chợ. Đến tham quan chợ nổi thời điểm này, bạn còn có cơ hội được ngắm khung cảnh bình minh tuyệt đẹp trên sông.</p><p>Hầu hết các bến thuyền ở huyện Trà Ôn đều có cho thuê thuyền phục vụ khách du lịch đi tham quan chợ nổi. Khi thuê thuyền, bạn nên trao đổi để thống nhất giá trước, tránh tình trạng bị hét giá. Hiện giá thuê thuyền tham quan chợ nổi Trà Ôn sẽ giao động trong khoảng từ 20.000 – 30.000 đồng.</p><p>Sau khi đã thuê được thuyền, bạn sẽ được chủ thuyền chở xuôi theo dòng sông Hậu để đến chợ nổi Trà Ôn. Khi vừa mới đến gần khu chợ, bạn sẽ thấy được ngay không khí buôn bán tấp nập của người dân nơi đây. Hằng ngày, chợ nổi Trà Ôn có đến khoảng 100 thuyền bè từ khắp các tỉnh miền Tây đến buôn bán, giao thương.</p><p>hững chiếc thuyền trên chợ nổi như một cửa hàng di động, chở đầy đủ các loại mặt hàng buôn bán. Trong đó trái cây, rau củ và các mặt hàng nông sản được trao đổi nhiều nhất. Bởi lẽ, các tỉnh miền Tây là nơi trù phú với hệ thống sông ngòi kênh rạch dày đặc, rất thích hợp để phát triển nông nghiệp. Ngoài ra, trên chợ nổi còn có các thuyền bán đồ ăn, thức uống, các đồ dùng sinh hoạt, thực phẩm sử dụng hằng ngày,… Bất kỳ mặt hàng nào trên đất liền, bạn cũng có thể tìm thấy ở chợ nổi Trà Ôn.</p>', 0, 1, 5, '2024-12-15 07:29:55', '2024-12-18 06:18:31'),
(8, 'Làng nổi Tân Lập', 'Xã Tân Lập, huyện Mộc Hóa, tỉnh Long An', 'Miễn phí', '<p>Các bạn đừng hiểu lầm làng nổi Tân Lập bên trong có một ngôi làng nhé, nơi đây là một khu rừng tràm nguyên sinh rộng lớn và những con đường bí ẩn dẫn vào rừng. Đây được xem là địa điểm phù hợp dành cho những ai thích tìm về với thiên nhiên hoang dã, khám phá nét văn hoá sông nước miền Tây Nam Bộ.</p><p>Sở dĩ có cái tên Làng nổi Tân Lập là do trước kia khi chưa được quy hoạch, vào mùa nước nổi khoảng tháng 7 âm lịch hàng năm người dân ở đây thường nâng cao sàn nhà theo con nước lên, nhìn từ xa giống như một làng nổi trên mặt nước mênh mông. Do đó, khi quy hoạch khu du lịch này, tên gọi làng nổi gắn với địa danh xã Tân Lập đã được đặt cho khu du lịch.</p><p>Với diện tích 135ha, có vùng đệm rộng 500ha được quy hoạch để xây dựng khu du lịch đặc trưng của Long An nói riêng và cả vùng đất ngập nước Đồng Tháp Mười nói chung. Du lịch Long An ghé thăm làng nổi Tân Lập này bạn sẽ được hòa mình vào vùng đất ngập nước đặc trưng với sinh cảnh rừng tràm, sen – súng, lục bình, lúa ma điển hình của khu vực và là nơi cư trú của nhiều loại động vật (chim, cò, cá…)</p><p>Làng nổi là một khu du lịch sinh thái với cảnh quan thay đổi lớn theo mùa. Nếu bạn thắc mắc làng nổi Tân Lập vào thời điểm nào đẹp nhất? thì câu trả lời chính là du lịch miền Tây vào mùa nước nổi tức là từ tháng 8 tới tháng 11 âm lịch hàng năm. Vào mùa nước nổi, nếu bạn đứng từ trên cao nhìn xuống sẽ thấy làng nổi Tân lập giống như một hòn đảo xanh thẳm giữa biển nước mênh mông. Tất cả tạo nên một bức tranh thiên nhiên vô cùng sống động.</p><p>Đến khu du lịch sinh thái làng nổi Tân Lập, du khách có thể tản bộ trên con đường xuyên rừng tràm, đi thuyền xuôi theo rạch Rừng, thả mình vào thiên nhiên trên quãng đường dài hơn 3km xung quanh rừng tràm bằng thuyền cáp kéo.</p><p>Sau khi mua vé, du khách sẽ bắt đầu len lỏi theo những con rạch bằng xuồng nhỏ giữa rừng tràm. Con rạch chính dẫn vào khu trung tâm Làng nổi Tân Lập có tên là Rạch Rừng. Sẽ thật bình yên khi du khách ngồi trên xuồng lênh đênh trên rạch rừng, ngửi hương tràm, ngắm những vạt sen, súng rực nở một góc sông, nhìn những cánh chim chao liệng trên bầu trời xanh ngắt, thỉnh thoảng lại nghiêng mình theo con nước.</p>', 0, 1, 1, '2024-12-15 07:36:58', '2024-12-18 06:19:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(60, '2024_12_05_120029_create_roles_table', 1),
(61, '2014_10_12_000000_create_users_table', 2),
(62, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(63, '2019_08_19_000000_create_failed_jobs_table', 3),
(64, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(65, '2024_12_05_122353_create_provinces_table', 3),
(66, '2024_12_05_122354_create_types_table', 3),
(67, '2024_12_05_122355_create_slides_table', 3),
(68, '2024_12_05_122404_create_contacts_table', 3),
(69, '2024_12_05_122351_create_locations_table', 4),
(70, '2024_12_05_122352_create_photos_table', 5),
(71, '2024_12_05_122352_create_type_of_utilities_table', 5),
(72, '2024_12_05_122353_create_utilities_table', 6),
(73, '2024_12_05_122354_create_reviews_table', 6),
(74, '2024_12_05_122355_create_posts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photos`
--

CREATE TABLE `photos` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `status` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `photos`
--

INSERT INTO `photos` (`id`, `name`, `caption`, `url`, `status`, `id_location`, `created_at`, `updated_at`) VALUES
(7, '1734054770-bien-ba-dong-6.webp', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 2, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(8, '1734054770-badong1.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(9, '1734054770-badong2.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(10, '1734054770-bien-ba-dong-3-1024x654.webp', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(11, '1734054770-bien-ba-dong-dia-diem-thu-hut-dong-dao-khach-du-lich-tai-tra-vinh.jpg', 'Bãi biển Ba động với khung cảnh tuyệt đẹp', NULL, 0, 1, '2024-12-12 18:52:50', '2024-12-12 18:52:50'),
(12, '1734055073-aobaom-02.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 2, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(13, '1734055073-ao-ba-om.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-15 06:46:58'),
(14, '1734055073-aobaom-1.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(15, '1734055073-aobaom-6.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(16, '1734055073-aobaom-8.jpg', 'Ao Bà Om với khung cảnh thơ mộng', NULL, 0, 2, '2024-12-12 18:57:53', '2024-12-12 18:57:53'),
(17, '1734270407-den-tho-bac-tra-vinh-tu-tren-cao-1705917255.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 2, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(18, '1734270407-0aab38b2e28320dd7992-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(19, '1734270407-6f16f20a4f3b8d65d42a-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(20, '1734270407-605a0a3db40c76522f1d-2048x1365.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(21, '1734270407-f9ba6ec9d3f811a648e9-2048x1536.jpg', 'Đền thờ Bác với các khung cảnh hữu tình', NULL, 0, 3, '2024-12-15 06:46:47', '2024-12-15 06:46:47'),
(22, '1734270549-chua-ang-02-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 2, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(23, '1734270549-chua-ang-01-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(24, '1734270549-chuaang3-1.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(25, '1734270549-chua-ang-04-1700589047.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(26, '1734270549-chua-ang-06-1700589040.jpg', 'Ngồi chùa nổi tiếng với sự lâu đời', NULL, 0, 4, '2024-12-15 06:49:09', '2024-12-15 06:49:09'),
(27, '1734270644-nui-co-to-2.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 2, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(28, '1734270644-nui-co-to.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(29, '1734270644-nui-co-to-01-1.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(30, '1734270644-nui-co-to-an-giang.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(31, '1734270644-nui-to-an-giang.jpg', 'Tầm nhìn kì ảo từ trên núi', NULL, 0, 5, '2024-12-15 06:50:44', '2024-12-15 06:50:44'),
(32, '1734270782-Ben-Ninh-Kieu-10.jpeg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 2, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(33, '1734270782-ben_ninh_kieu_can_tho_du_lich_thu_duc_2.jpg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(34, '1734270782-benninhkieu.jpg', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(35, '1734270782-ben-ninh-kieu-2.webp', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(36, '1734270782-ben-ninh-kieu-3.webp', 'Bến Ninh Kiều bên dòng sông êm ả', NULL, 0, 6, '2024-12-15 06:53:02', '2024-12-15 06:53:02'),
(37, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-02-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 2, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(38, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-01-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(39, '1734273028-cho-noi-tra-on-net-van-hoa-giao-thuong-dac-sac-mien-cuu-long-05-1662643226.jpeg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(40, '1734273028-tra_on1_BongTrip_vn.jpg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(41, '1734273028-tra_on3_Bazan_Travel.jpg', 'Chợ nổi hoạt động nhộn nhịp thu hút', NULL, 0, 7, '2024-12-15 07:30:28', '2024-12-15 07:30:28'),
(42, '1734273461-langnoitanlap01.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 2, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(43, '1734273461-langnoitanlap-1.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(44, '1734273461-langnoitanlap04.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(45, '1734273461-langnoitanlap-9.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(46, '1734273461-langnoitanlaplongan01.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `provinces`
--

INSERT INTO `provinces` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, '80', 'Tỉnh Long An', 0, '2024-12-11 12:05:04', '2024-12-11 12:46:04'),
(2, '82', 'Tỉnh Tiền Giang', 0, '2024-12-11 12:05:04', NULL),
(3, '83', 'Tỉnh Bến Tre', 0, '2024-12-11 12:05:04', NULL),
(4, '84', 'Tỉnh Trà Vinh', 0, '2024-12-11 12:05:04', NULL),
(5, '86', 'Tỉnh Vĩnh Long', 0, '2024-12-11 12:05:04', NULL),
(6, '87', 'Tỉnh Đồng Tháp', 0, '2024-12-11 12:05:04', NULL),
(7, '89', 'Tỉnh An Giang', 0, '2024-12-11 12:05:04', NULL),
(8, '91', 'Tỉnh Kiên Giang', 0, '2024-12-11 12:05:04', NULL),
(9, '92', 'Thành phố Cần Thơ', 0, '2024-12-11 12:05:04', NULL),
(10, '93', 'Tỉnh Hậu Giang', 0, '2024-12-11 12:05:04', NULL),
(11, '94', 'Tỉnh Sóc Trăng', 0, '2024-12-11 12:05:04', NULL),
(12, '95', 'Tỉnh Bạc Liêu', 0, '2024-12-11 12:05:04', NULL),
(13, '96', 'Tỉnh Cà Mau', 0, '2024-12-11 12:05:04', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int UNSIGNED NOT NULL,
  `point` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_user` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Người quản trị', NULL, NULL),
(2, 'Người dùng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1734057820.jpg', 0, '2024-12-12 19:43:40', '2024-12-12 19:43:40'),
(4, '1734266184.jpg', 0, '2024-12-15 05:36:24', '2024-12-15 05:36:24'),
(7, '1734267518.jpg', 0, '2024-12-15 05:58:39', '2024-12-15 05:58:39'),
(9, '1734267571.jpg', 0, '2024-12-15 05:59:31', '2024-12-15 05:59:31'),
(10, '1734267656.jpg', 0, '2024-12-15 06:00:56', '2024-12-15 06:00:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeofutilities`
--

CREATE TABLE `typeofutilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `typeofutilities`
--

INSERT INTO `typeofutilities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lưu trú', 0, '2024-12-12 18:23:43', '2024-12-12 18:23:43'),
(2, 'Ẩm thực', 0, '2024-12-12 18:23:48', '2024-12-12 18:23:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch sinh thái', 0, '2024-12-12 18:22:50', '2024-12-12 18:22:50'),
(2, 'Du lịch tâm linh', 0, '2024-12-12 18:22:54', '2024-12-12 18:22:54'),
(3, 'Du lịch nghỉ dưỡng', 0, '2024-12-12 18:23:04', '2024-12-12 18:23:04'),
(4, 'Du lịch văn hóa', 0, '2024-12-12 18:23:16', '2024-12-12 18:23:16'),
(5, 'Du lịch làng nghề truyền thống', 0, '2024-12-12 18:23:26', '2024-12-12 18:23:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_role` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `google_id`, `username`, `email`, `address`, `password`, `image`, `status`, `id_role`, `created_at`, `updated_at`) VALUES
(2, NULL, 'admin', 'admin@gmail.com', 'Trà Vinh', '$2y$12$NzG19XOwvU7OR.2.OnsWi.eNQPCEWISIAFCXl304uvbM.0ccdEcXa', 'default.jpg', 0, 1, '2024-12-12 18:13:50', '2024-12-12 18:13:50'),
(3, NULL, 'abc', 'abc@gmail.com', NULL, '$2y$12$PmF4qTvExN6j6bNQWNdcsOMwh7HWSbjtf1qKYzDpkVfJFQ6IKux6u', 'default.jpg', 0, 2, '2024-12-13 01:55:37', '2024-12-13 01:55:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utilities`
--

CREATE TABLE `utilities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` int UNSIGNED NOT NULL,
  `distance` double(8,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int UNSIGNED NOT NULL,
  `id_typeofutility` int UNSIGNED NOT NULL,
  `id_location` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `utilities`
--

INSERT INTO `utilities` (`id`, `name`, `price`, `address`, `phonenumber`, `time`, `rank`, `distance`, `description`, `image`, `status`, `id_typeofutility`, `id_location`, `created_at`, `updated_at`) VALUES
(2, 'Bún nước lèo Cô Ba', 'Dao động từ 30.000 đến 100.000 VNĐ', 'Đường 19/5, Phường 1, thành phố Trà Vinh, tỉnh Trà Vinh', '0898333398', 'Từ 6:30 đến 9:30', 4, 5.10, '<p>Bún nước lèo là món ăn đặc sản nổi tiếng của tỉnh Trà Vinh, đến nỗi giới “sành điệu” thường bảo nhau: “Chưa ăn bún nước lèo xem như chưa đến Trà Vinh!”. Bún nước lèo còn thể hiện sự giao lưu văn hóa, đoàn kết giữa các cộng đồng dân tộc ở Trà Vinh. Bún nước lèo được chế biến từ mắm Pròhốc của người Khmer, có thêm món thịt heo quay của người Hoa.</p><p>Nguyên liệu chính để nấu món này là mắm bò hóc. Đây là loại mắm được làm từ nguyên liệu cá hỗn hợp. Mắm phải đạt các tiêu chuẩn, có hương vị và tan nhanh trong nước sôi. Để nước ngọt, người ta dùng thêm các loại cá như: cá lóc, cá kèo, cá ngát hay tôm, tép… Ăn bún nước lèo cần có rau ghém, gồm: bắp chuối, rau muống bào nhỏ, bông súng xắt theo chiều ngang, trộn đều với một ít rau thơm xắt nhuyễn. Vào mùa điều (còn gọi là đào lộn hột), có người còn thích băm một vài trái điều cho vào rau ghém để có vị ngon hơn. Bún nước lèo là món ăn bình dân mà lại mang đậm hương vị, nếu có dịp về Trà Vinh, mời bạn dừng chân tại một quán ăn nào đó bên đường và gọi một tô bún nước lèo để thưởng thức, chắc chắn bạn sẽ cảm thấy khác hẳn những loại bún thường ăn. Đó cũng chính là ấn tượng khó phai khi bạn tới thăm vùng đất này.</p>', '1734529601.jpg', 0, 2, 2, '2024-12-18 06:46:41', '2024-12-18 07:25:38'),
(3, 'Rich Hotel', 'Trung bình mỗi đêm khoảng 247.755 VNĐ', '86D Hùng Vương, An Cư, Ninh Kiều, Cần Thơ', '0365550024', '24/7', 3, 2.30, '<p>Nằm ở vị trí trung tâm tại Trung tâm thành phố Cần Thơ của Cần Thơ, chỗ nghỉ này đặt quý khách ở gần các điểm thu hút và tùy chọn ăn uống thú vị. Hãy nhớ dành một chút thời gian để thăm thú Nhà cổ Bình Thủy cũng như Bãi tắm Cần Thơ gần đó. Chỗ nghỉ 3 sao này có nhà hàng giúp cho kỳ nghỉ của quý khách thêm thư thái và đáng nhớ.</p>', '1734530199.jpg', 0, 1, 6, '2024-12-18 06:56:39', '2024-12-18 07:27:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_id_type_foreign` (`id_type`),
  ADD KEY `locations_id_province_foreign` (`id_province`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_id_user_foreign` (`id_user`),
  ADD KEY `posts_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_id_user_foreign` (`id_user`),
  ADD KEY `reviews_id_location_foreign` (`id_location`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `typeofutilities`
--
ALTER TABLE `typeofutilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`);

--
-- Chỉ mục cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilities_id_typeofutility_foreign` (`id_typeofutility`),
  ADD KEY `utilities_id_location_foreign` (`id_location`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `typeofutilities`
--
ALTER TABLE `typeofutilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_id_province_foreign` FOREIGN KEY (`id_province`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `utilities`
--
ALTER TABLE `utilities`
  ADD CONSTRAINT `utilities_id_location_foreign` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilities_id_typeofutility_foreign` FOREIGN KEY (`id_typeofutility`) REFERENCES `typeofutilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
