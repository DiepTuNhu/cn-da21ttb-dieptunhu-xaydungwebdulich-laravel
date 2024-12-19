-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 19, 2024 lúc 12:18 PM
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
(7, 'Chợ nổi Trà Ôn', 'Đường Trưng Trắc, Xã Lục Sĩ Thành, Huyện Trà Ôn, Tỉnh Vĩnh Long', 'Miễn phí', '<p>Chợ nổi Trà Ôn nằm ở huyện Trà Ôn, tỉnh Vĩnh Long. Chợ cách trung tâm thành phố Vĩnh Long khoảng chừng 40km và cách thành phố Hồ Chí Minh khoảng 162km. Tùy theo điểm xuất phát và nhu cầu, bạn có thể đến đây bằng phương tiện xe máy, xe khách hay máy bay.</p><p>Tương tự như nhiều chợ nổi khác ở miền Tây, chợ nổi Trà Ôn hoạt động từ rất sớm, bắt đầu từ 3 – 4 giờ sáng và kết thúc lúc 11 giờ trưa. Theo kinh nghiệm thì bạn nên đi chợ vào lúc 5 – 6 giờ sáng. Đây là thời điểm lý tưởng này để bạn đến đây tham quan.</p><p>Từ 5 - 6 giờ sáng là khung giờ chợ nổi Trà Ôn hoạt động sôi nổi nhất. Không khí mua bán ở thời điểm này vô cùng tấp nập, nhộn nhịp. Bên cạnh đó, thời tiết sáng sớm cũng cực kỳ mát mẻ. Rất thoải mái để bạn có thể dạo một vòng quanh chợ. Đến tham quan chợ nổi thời điểm này, bạn còn có cơ hội được ngắm khung cảnh bình minh tuyệt đẹp trên sông.</p><p>Hầu hết các bến thuyền ở huyện Trà Ôn đều có cho thuê thuyền phục vụ khách du lịch đi tham quan chợ nổi. Khi thuê thuyền, bạn nên trao đổi để thống nhất giá trước, tránh tình trạng bị hét giá. Hiện giá thuê thuyền tham quan chợ nổi Trà Ôn sẽ giao động trong khoảng từ 20.000 – 30.000 đồng.</p><p>Sau khi đã thuê được thuyền, bạn sẽ được chủ thuyền chở xuôi theo dòng sông Hậu để đến chợ nổi Trà Ôn. Khi vừa mới đến gần khu chợ, bạn sẽ thấy được ngay không khí buôn bán tấp nập của người dân nơi đây. Hằng ngày, chợ nổi Trà Ôn có đến khoảng 100 thuyền bè từ khắp các tỉnh miền Tây đến buôn bán, giao thương.</p><p>hững chiếc thuyền trên chợ nổi như một cửa hàng di động, chở đầy đủ các loại mặt hàng buôn bán. Trong đó trái cây, rau củ và các mặt hàng nông sản được trao đổi nhiều nhất. Bởi lẽ, các tỉnh miền Tây là nơi trù phú với hệ thống sông ngòi kênh rạch dày đặc, rất thích hợp để phát triển nông nghiệp. Ngoài ra, trên chợ nổi còn có các thuyền bán đồ ăn, thức uống, các đồ dùng sinh hoạt, thực phẩm sử dụng hằng ngày,… Bất kỳ mặt hàng nào trên đất liền, bạn cũng có thể tìm thấy ở chợ nổi Trà Ôn.</p>', 0, 1, 5, '2024-12-15 07:29:55', '2024-12-18 20:02:44'),
(8, 'Làng nổi Tân Lập', 'Xã Tân Lập, huyện Mộc Hóa, tỉnh Long An', 'Miễn phí', '<p>Các bạn đừng hiểu lầm làng nổi Tân Lập bên trong có một ngôi làng nhé, nơi đây là một khu rừng tràm nguyên sinh rộng lớn và những con đường bí ẩn dẫn vào rừng. Đây được xem là địa điểm phù hợp dành cho những ai thích tìm về với thiên nhiên hoang dã, khám phá nét văn hoá sông nước miền Tây Nam Bộ.</p><p>Sở dĩ có cái tên Làng nổi Tân Lập là do trước kia khi chưa được quy hoạch, vào mùa nước nổi khoảng tháng 7 âm lịch hàng năm người dân ở đây thường nâng cao sàn nhà theo con nước lên, nhìn từ xa giống như một làng nổi trên mặt nước mênh mông. Do đó, khi quy hoạch khu du lịch này, tên gọi làng nổi gắn với địa danh xã Tân Lập đã được đặt cho khu du lịch.</p><p>Với diện tích 135ha, có vùng đệm rộng 500ha được quy hoạch để xây dựng khu du lịch đặc trưng của Long An nói riêng và cả vùng đất ngập nước Đồng Tháp Mười nói chung. Du lịch Long An ghé thăm làng nổi Tân Lập này bạn sẽ được hòa mình vào vùng đất ngập nước đặc trưng với sinh cảnh rừng tràm, sen – súng, lục bình, lúa ma điển hình của khu vực và là nơi cư trú của nhiều loại động vật (chim, cò, cá…)</p><p>Làng nổi là một khu du lịch sinh thái với cảnh quan thay đổi lớn theo mùa. Nếu bạn thắc mắc làng nổi Tân Lập vào thời điểm nào đẹp nhất? thì câu trả lời chính là du lịch miền Tây vào mùa nước nổi tức là từ tháng 8 tới tháng 11 âm lịch hàng năm. Vào mùa nước nổi, nếu bạn đứng từ trên cao nhìn xuống sẽ thấy làng nổi Tân lập giống như một hòn đảo xanh thẳm giữa biển nước mênh mông. Tất cả tạo nên một bức tranh thiên nhiên vô cùng sống động.</p><p>Đến khu du lịch sinh thái làng nổi Tân Lập, du khách có thể tản bộ trên con đường xuyên rừng tràm, đi thuyền xuôi theo rạch Rừng, thả mình vào thiên nhiên trên quãng đường dài hơn 3km xung quanh rừng tràm bằng thuyền cáp kéo.</p><p>Sau khi mua vé, du khách sẽ bắt đầu len lỏi theo những con rạch bằng xuồng nhỏ giữa rừng tràm. Con rạch chính dẫn vào khu trung tâm Làng nổi Tân Lập có tên là Rạch Rừng. Sẽ thật bình yên khi du khách ngồi trên xuồng lênh đênh trên rạch rừng, ngửi hương tràm, ngắm những vạt sen, súng rực nở một góc sông, nhìn những cánh chim chao liệng trên bầu trời xanh ngắt, thỉnh thoảng lại nghiêng mình theo con nước.</p>', 0, 1, 1, '2024-12-15 07:36:58', '2024-12-18 06:19:09'),
(10, 'Làng cổ Phước Lộc Thọ', 'Xã Hựu Thạnh, huyện Đức Hòa, tỉnh Long An.', 'Miễn phí', '<p>Làng cổ Phước Lộc Thọ là điểm du lịch độc đáo với 22 ngôi nhà gỗ cổ mang bản sắc ba miền đất nước và nhà sàn của các dân tộc thiểu số. Nơi đây còn có nhiều cổ vật quý từ vua chúa, quan quân, địa chủ, người dân và các vật tâm linh văn hóa. Bước vào cổng thành thời xưa, bạn sẽ ngắm được hòn non bộ lớn, bộ tượng Phước Lộc Thọ bằng đá cẩm thạch và những nét cổ kính của các ngôi nhà xưa.</p><p>Nổi bật nhất là ngôi nhà chữ “Công” trên 100 tuổi với 104 cột khảm xà cừ Tứ linh và Tứ hữu, các vách chạm trổ hoa quả, chim muông và nhiều cổ vật quý hiếm như bộ ván của vua Bảo Đại, chiếc gương soi của hoàng hậu… Làng cổ Phước Lộc Thọ còn có không gian sinh thái hữu tình, vườn lan phong phú, khu hồ bơi và khu ẩm thực đa dạng.</p><p>Ngoài ra, bạn còn có thể chiêm ngưỡng những ngôi nhà mang phong cách riêng của từng miền. Nhà rường Huế thể hiện sự uy nghi của quan lại và giới thượng lưu xứ kinh kỳ thời phong kiến. Nhà rường Nam Bộ phản ánh sự giản dị và thoáng đãng của người miền Nam. Nhà sàn Tây Nguyên và Đông Nam Bộ biểu hiện nét đặc trưng của các dân tộc thiểu số. Mỗi ngôi nhà đều có những điểm nhấn riêng biệt về kiến trúc, hoa văn, chất liệu và màu sắc. Đây cũng là cơ hội để bạn tìm hiểu về lịch sử, văn hóa và đời sống của người Việt qua những ngôi nhà này.</p><p>Khu tham quan là nơi bạn có thể chiêm ngưỡng những ngôi nhà cổ được chọn lọc và mang về từ khắp các vùng miền của Việt Nam. Mỗi ngôi nhà cổ đều có kiến trúc, phong cách và câu chuyện riêng biệt, phản ánh đặc trưng của vùng đất đó. Bạn sẽ được ngắm nhìn những mái ngói đỏ thấm màu thời gian, các cột gỗ chạm khắc tinh xảo, bức tranh đồng quê yên bình. Bạn cũng có thể tham gia vào những hoạt động vui chơi giải trí như xem xiếc, múa lân, ca trù, chèo kéo hay thưởng thức những món ăn dân dã tại đây.</p>', 0, 1, 1, '2024-12-19 02:04:34', '2024-12-19 02:04:34'),
(11, 'Nhà cổ trăm cột', 'Xã Long Hựu Đông, huyện Cần Đước, tỉnh Long An', 'Miễn phí', '<p>Nhà Trăm Cột có diện tích kiến trúc 882m2, chính diện hướng Tây Bắc, tọa lạc trên một khu vườn rộng 4.044m2. Ngôi nhà có kết cấu kiến trúc gồm 3 gian, 2 chái; nội thất gồm có hai phần: phần trước là nội tự - ngoại khách (phía trong thờ tự, phía ngoài tiếp khách); phần sau là phần để ở và sinh hoạt; lẫm lúa ở sau cùng đã bị tháo dở năm 1952, đã được trùng tu, tôn tạo lại. Vật liệu xây nhà hoàn toàn bằng các loại danh mộc như cẩm lai, gõ đỏ, gỗ mật…, mái lợp ngói âm dương, nền bằng đá tảng, cách mặt đất 0,9 m, nền lát gạch Tàu hình lục giác.</p><p>Nhà Trăm Cột có kiến trúc truyền thống, kiểu nhà rường ở miền Trung với kết cấu xuyên trính (còn gọi là nhà đâm trính, nhà rường…), khung sườn kiểu bát trụ, định vị theo hướng Tây-Đông,Tiền-Hậu. Các bộ phận của kết cấu chính như trính, trổng đều được trang trí bằng cách chạy chỉ, uốn cong. Tiếp giáp giữa bộ phận trính và trổng để đỡ đòn dông nóc nhà được cách điệu hình “chày cối” tượng trưng cho âm dương hòa hợp (nên còn gọi là kiểu nhà chày cối). Kết cấu này có nhiều ưu điểm bởi bộ khung rất chắc chắn. Nội thất ngôi nhà kiểu bát trụ không có hàng cột giữa nên không gian được tạo ra ở giữa nhà rất rộng thích hợp để thờ tự.</p><p>Xét về qui mô kiến trúc, Nhà Trăm Cột không lớn so với một số ngôi nhà cổ cùng thời khác, nhưng nghệ thuật trang trí ở đây rất đáng chú ý, từ cách bố cục, thể hiện đề tài đến xử lý kỹ thuật, đều cho thấy tay nghề điêu khắc của các nghệ nhân ở vào trình độ điêu luyện. Toàn bộ hệ thống vì kèo, xuyên được chạm nổi, chạm lọng các đề tài Vân hóa long”, “ Tứ thời”… kiểu “Dây lá hóa” đặc trưng của Huế rất công phu, sắc sảo. Các gian nội tự -ngoại khách là nơi tập trung cao nhất giá trị thẩm mỹ của công trình mà người xưa đã gửi gắm trên từng nét chạm. Đó là một tập hợp đa dạng, phong phú các đề tài cổ điển như “Tứ linh” ,Tứ thời”, “Bát quả”; các mô típ thể hiện Phúc - Lộc -Thọ bên cạnh các đề tài phương Tây như Hoa Hồng, Sóc - Nho…, cùng các đề tài cây trái của vùng đất Nam Bộ như mãng cầu, bình bát, khế, măng cụt …được các nghệ nhân thể hiện công phu trên các bao lam, các khung ô hộc, vách ngăn, vách lá gió, bàn thờ, ghế nghi, bàn tròn, bàn dài…bằng kỹ thuật chạm lọng, chạm nổi, chạm bong kênh, chạm nổi trên nền chạm lọng… hết sức điêu luyện.</p>', 0, 4, 1, '2024-12-19 02:05:56', '2024-12-19 02:05:56'),
(12, 'Khu du lịch cánh đồng bất tận', 'Xã Bình Phong Thạnh, huyện Mộc Hóa, tỉnh Long An.', 'Miễn phí', '<p>Đến với Long An du khách sẽ được chiêm ngưỡng những cánh đồng bất tận, thưởng thức những li nước dược liệu thơm mát để xua đi cái mệt mỏi của cuộc sống thường ngày. Khu du lịch Cánh Đồng Bất Tận nằm trong Khu bảo tồn dược liệu Đồng Tháp Mười thuộc xã Bình Phong Thạnh, huyện Mộc Hóa, tỉnh Long An.</p><p>Với sự đa dạng sinh học, đặc biệt là các loại dược liệu quý hiếm, nơi đây trở thành khu du lịch sinh thái đặc trưng của tỉnh nói riêng, du lịch Miền Tây nói chung và là khu rừng tràm gió nguyên sinh duy nhất tại Việt Nam. Cảnh vật nguyên sơ được giữ gìn từ hàng chục năm trước, cùng khu bảo tồn các giống tràm bản địa, vườn dược liệu có một không hai sẽ làm thỏa mãn du khách đến từ phố thị, nơi vốn ồn ào, náo nhiệt.</p><p>Lịch sử hình thành và phát triển của Công ty cổ phần Nghiên cứu Bảo tồn và Phát triển dược liệu Đồng Tháp Mười trải qua hơn 3 thập kỷ. Từ những 80 của thế kỷ XX, có những con người từ phương xa đến vùng đất Đồng Tháp Mười, khi ấy nơi đây là vùng đất chết, nhưng với tinh thần say mê lao động, họ đã chinh phục thiên nhiên, lao động, sáng tạo và nghiên cứu biến cánh đồng hoang bất tận thành cánh đồng trù phú, rồi bảo tồn dược liệu, sinh thái và môi trường thiên nhiên nơi này.</p><p>Thời gian du lịch Cánh Đồng Bất Tận đẹp nhất là vào mùa nước nổi tầm tháng 9 đến tháng 11. Khi du lịch Miền Tây vào mùa nước nổi, du khách sẽ được đắm chìm trong không gian của vương quốc chim, cò với mật độ dày đặc, thực vật mênh mông của vùng sông nước Đồng Tháp Mười. Hàng năm, vào đêm rằm tháng Giêng tại Khu du lịch Cánh đồng bất tận đều diễn ra sự kiện văn hóa đặc trưng là ngày giỗ tổ Hải Thượng Lãn Ông và Tuệ Tĩnh; đồng thời cũng là ngày Tết Nguyên tiêu thu hút nhiều du khách thập phương tham dự.</p>', 0, 1, 1, '2024-12-19 02:07:21', '2024-12-19 02:07:21'),
(13, 'Biển Tân Thành', 'Xã Tân Thành, huyện Gò Công, tỉnh Tiền Giang', 'Miễn phí', '<p>Tại biển Tân Thành Gò Công, mỗi một mùa đều mang một nét đẹp riêng khác nhau. Chính vì thế, bạn có thể lựa chọn những thời điểm khác nhau để tham quan bãi biển này. Ngoài ra, nếu bạn là “tín đồ” mê hải sản, bạn có thể ghé đến biển Tân Thành Gò Công vào những mùa hải sản trong năm bao gồm:</p><p>Mùa nghêu: Trải dài từ tháng 3 đến tháng 9 âm lịch hàng năm</p><p>Mùa ốc: Tháng 5 âm lịch hàng năm</p><p>Mùa sam: Trải dài từ tháng 10 đến tháng 2 âm lịch hàng năm.</p><p>Là vùng biển phù sa, biển Tân Thành Gò Công thừa hưởng cho mình một sắc nâu riêng biệt với những bãi cát đen, cùng với đó là nước biển không được trong xanh giống như các bãi biển du lịch nổi tiếng khác. Thế nhưng, những vẻ đẹp độc đáo đó lại chính là những yếu tố then chốt làm nổi bật nét riêng của bãi biển này và khiến cho nơi đây trở nên thú vị hơn với nhiều cảnh quan thiên nhiên mới lạ, huyền ảo.</p><p>Bên cạnh đó, biển Tân Thành Gò Công cũng là điểm đến du lịch lý tưởng cho những người yêu thích bầu không khí trong lành, tìm kiếm sự bình yên hay đơn giản là được thưởng thức những món hải sản yêu thích mang hương vị của gió biển lồng lộng.</p><p>ặc biệt hơn, tại biển Tân Thành Gò Công còn xuất hiện một chiếc cầu vươn ra biển. Nơi đây chắc chắn sẽ giúp bạn sở hữu được những bức ảnh check-in “cực chill” được hòa quyện bởi các yếu tố thiên nhiên gom tụ lại. Bạn đầu, cây cầu này không có gì nổi bật bởi kiến trúc cơ bản, chất liệu bình thường. Nhưng chính sự đơn giản ấy lại rất hài hòa với khung cảnh và vẻ đẹp hoang sơ, yên bình nơi bãi biển Tân Thành Gò Công.</p>', 0, 3, 2, '2024-12-19 02:08:18', '2024-12-19 02:08:18'),
(14, 'Nhà thờ Cái Bè', 'Thị trấn Cái Bè, huyện Cái Bè, tỉnh Tiền Giang', 'Miễn phí', '<p>Nhà thờ do linh mục Adophe Keller người Đức và bà con giáo xứ Cái Bè xây dựng từ năm 1929-1932. Nhà thờ Cái Bè có lối kiến trúc Roman của phương tây bằng bê tông cốt thép đúc đá, qua bao thăng trầm thời gian vẫn giữ được dáng vẻ đẹp thanh thoát, cổ kính.</p><p>Mặt bằng nhà thờ có hình Thánh giá với hai cánh ngang rất cân đối, gồm một lòng chính và hai lòng phụ với khuôn viên rộng và mát mẻ. Nhìn từ trên cao, nhà thờ như một dấu chữ thập khổng lồ nổi bật giữa khuôn viên cây xanh và xóm làng bình dị.</p><p>Tháp chuông có bộ chuông rất lớn gồm 4 trái, được đúc tại Pháp vào năm 1931, với kỹ thuật thiết kế quả lắc chuông và thanh treo chuông rất tiên tiến.</p><p>Bộ chuông nhà thờ Đức Bà Sai Gon do một hãng khác đúc thì thua xa về kỹ thuật thiết kế quả lắc của của nhà thờ này. Dưới chân tháp chuông là một hầm chứa nước khá lớn nhằm khuếch đại âm thanh của tiếng chuông. Tiếng chuông nhà thờ là âm thanh của sự yên lành, thanh bình, thánh thiện, gieo vào lòng người những cung bậc của bác ái và hân hoan.</p><p>Mái vòm cao, chia múi với những hoa văn đơn giản mà tinh tế. Nội thất tráng lệ cùng những bức tranh được bài trí trang trọng bên trong nhà thờ. Tấm tranh bằng kính màu vừa có tác dụng chiếu sáng nội thất thánh đường vừa mang tính thẩm mỹ độc đáo, tạo nên một không gian linh thiêng cho những tín đồ tin tưởng nguyện cầu.</p>', 0, 2, 2, '2024-12-19 02:09:03', '2024-12-19 02:09:03'),
(15, 'Nhà thờ Chánh Toà Mỹ Tho', '32 Hùng Vương, phường 7, thành phố Mỹ Tho, tỉnh Tiền Giang', 'Miễn phí', '<p>Là ngôi nhà chung thứ ba của họ đạo Mỹ Tho, Nhà thờ Chánh Tòa chính thức được đặt viên đá đầu tiên và khởi công xây dựng vào ngày 11/8/1906 dưới sự giám sát của cha Régnier (người dân thường gọi với cái tên gần gũi hơn là Cha Gẫm) trên đại lộ Hùng Vương mà trước kia có tên là đại lộ Bourdais.</p><p>Ngược dòng lịch sử để nhìn lại quá khứ của họ đạo Mỹ Tho mới biết, hóa ra ngôi nhà thờ đầu tiên chính là nhà thờ thánh Phanxicô Xaviê do các linh mục của dòng Thừa Sai. Mãi đến năm 1866, Giám mục Miche đã quyết định khởi công xây dựng một thánh đường mới, đặt tên là Nhà thờ Vĩnh Tường và được cung hiến Thánh Tâm.</p><p>Sau này, Nhà thờ Vĩnh Tường đã xuống cấp, không còn khả năng sử dụng nên các giám mục đã quyết định xây dựng một thánh đường mới, đó chính là Nhà thờ Chánh Tòa Mỹ Tho. Nhà thờ vẫn giữ trọn vẹn lối kiến trúc Hy Lạp Roman của nhà thờ cũ, xây trên một nền đất sình với một gian chính và hai gian phụ.</p><p>Bởi vì được xây trên một nền đất sình nên chiều cao của Nhà thờ Chánh Tòa Mỹ Tho bắt buộc phải hạ thấp xuống để đảm bảo an toàn. Hiện nay, nhà thờ cao 24m, dài 53m và rộng hơn 17m, gồm một gian chính và hai gian phụ ở hai bên. Nhà thờ xây theo kiến trúc Hy Lạp – Roman thời Phục Hưng với phần cột tròn chống đỡ với phần mái vòm được trang trí bằng những họa tiết hoa văn tỉ mẩn, cầu kỳ và công phu.</p>', 0, 2, 2, '2024-12-19 02:09:46', '2024-12-19 02:24:09'),
(16, 'Làng cổ Đông Hòa Hiệp', 'Xã Đông Hòa Hiệp, huyện Cái Bè, tỉnh Tiền Giang', 'Miễn phí', '<p>Nếu quay ngược dòng lịch sử bạn sẽ thấy huyện Cái Bè là một mảnh đất khá trù phú từ những năm đầu thế kỷ 18. Ngoài ra đây còn được biết đến như một trung tâm văn hóa – kinh tế với tên gọi là Cái Bè Dinh. Sở dĩ có tên gọi này là bởi năm 1732 chúa Nguyễn Phúc Chu đã chọn thôn An Bình Đông, xã Đông Hòa Hiệp hiện tại làm lỵ sở của dinh Long Hồ.</p><p>Năm 1757 thì lỵ sở mới được di chuyển về thôn Long Hồ, thành phố Vĩnh Long hiện nay. Trong 25 năm làm lỵ sở Cái Bè đã thu hút được nhiều quan lại và cả địa chủ tới định cư. Đây cũng là lý do những dinh thự mọc lên, biến mảnh đất ở hạ lưu sông Mê Kông thêm phần trù phú.</p><p>Làng cổ Đông Hòa Hiệp Tiền Giang mang kiến trúc kết hợp giữa phương Đông và phương Tây, giao thoa nét xảo diệu của xứ kinh kỳ với âm hưởng sông nước Nam bộ phóng khoáng. Nước ta có tổng cộng 3 ngôi làng cổ nổi tiếng nhất là làng cổ Đường Lâm (Hà Nội), làng cổ Phước Tích (Huế) và Làng cổ Đông Hòa Hiệp Tiền Giang.</p><p>Một điểm mà chúng ta nên lưu ý khi đi khám phá Làng cổ Đông Hòa Hiệp Tiền Giang chính là không nên đến vào mùa mưa. Bởi lúc đó chúng ta không thể di chuyển ra thăm vườn được, mà đây lại là điểm đặc sắc chính của làng. Thế nên thời điểm đi khám phá đẹp nhất chính là từ tháng 1 đến tháng 5 khi vào mùa khô hoặc mùa trái cây.</p>', 0, 4, 2, '2024-12-19 02:10:57', '2024-12-19 02:10:57'),
(17, 'Làng hoa Sa Đéc', 'Thành phố Sa Đéc, tỉnh Đồng Tháp', '80.000 VNĐ - 105.000 VNĐ/khách', '<p>Làng hoa Sa Đéc thuộc thành phố Sa Đéc, tỉnh Đồng Tháp, là một trong những làng hoa nổi tiếng và lâu đời nhất miền Tây Nam Bộ. Nằm dọc theo bờ sông Tiền, làng hoa có diện tích hơn 500 ha với hàng trăm loài hoa và cây cảnh khác nhau. Đặc biệt, nơi đây nổi tiếng với những loài hoa truyền thống như cúc mâm xôi, hồng, mai vàng và đặc biệt là hoa cúc tần Ấn Độ.</p><p>Mỗi dịp Tết đến, làng hoa Sa Đéc trở nên rực rỡ và thu hút hàng ngàn khách du lịch Đồng Tháp ghé đến tham quan và chụp ảnh. Điểm độc đáo của làng hoa Sa Đéc đó chính là hoa ở đây được trồng trên giàn cao hoặc luống đất nổi, tạo nên một khung cảnh đầy màu sắc trải dài. Sự kết hợp giữa cảnh quan nên thơ và không khí trong lành đã góp phần làm cho làng hoa Sa Đéc trở thành điểm đến hấp dẫn đông đảo khách du lịch.</p><p>Thời điểm lý tưởng để bạn có thể đến tham quan Làng hoa Sa Đéc - Đồng Tháp là vào khoảng từ tháng 12 đến tháng 2 hàng năm, đặc biệt là trước và trong dịp Tết Nguyên Đán. Đây là lúc làng hoa rực rỡ khoe sắc và đẹp nhất với hàng trăm loại hoa nở rộ chuẩn bị cho mùa xuân. Du khách đến vào thời gian này sẽ được chiêm ngưỡng những luống hoa đầy màu sắc trải dài, từ cúc mâm xôi, hoa hồng, đến vạn thọ, tạo nên khung cảnh tươi tắn và rộn ràng hơn bao giờ hết.</p><p>Ngoài ra, khoảng thời gian này cũng có nhiều lễ hội và hoạt động văn hóa đặc sắc, như Lễ hội hoa xuân Sa Đéc thu hút đông đảo du khách tham gia. Không khí trong lành, tiết trời mát mẻ kết hợp với cảnh quan tuyệt đẹp khiến cho chuyến tham quan làng hoa Sa Đéc vào dịp này trở nên vô cùng thú vị và đáng nhớ.</p>', 0, 1, 6, '2024-12-19 02:11:53', '2024-12-19 02:11:53'),
(18, 'Nhà cổ Huỳnh Thuỷ Lê', 'Đường Nguyễn Huệ, Phường 4, Thành phố Sa Đéc', 'Miễn phí', '<p>Một trong những điểm nhấn nổi bật tạo nên sức hút cho công trình cổ xưa này, đó chính là lối kiến trúc kết hợp Việt, Hoa và phương Tây thú vị. Ngay khi bước vào không gian, bạn sẽ thấy sự xuất hiện của các loại gỗ quý được dùng làm khung sườn nhà, cột trụ và kết hợp đường nét hoa văn truyền thống. Nhờ đó, tạo nên tổng quan thu hút và ấn tượng cho bất kỳ ai khi ghé thăm.</p><p>Với tổng diện tích 258m2, tường giàu 30 - 40cm, tạo nên tổng quan thoáng mát và sự vững chắc cho công trình sau rất nhiều năm xây dựng. Nhà cổ Huỳnh Thủy Lê còn có phần khung cửa sổ, mặt tiền và trần nhà được trang trí phù điêu phong cách La Mã, Phục Hưng. Tất cả tạo nên vẻ đẹp huyền bí, ấn tượng cho tổng quan công trình.</p><p>Tuy nhiên, phần kiến trúc 3 gian đặc trưng của Nam Bộ Việt Nam vẫn được giữ nguyên, cùng mái ngói đỏ cong truyền thống. Cùng với đó, bên trong không gian của công trình cũng được sơn son thếp vàng đặc trưng của người Hoa. Tường của công trình được sử dụng tông màu vàng sáng, kết hợp những chi tiết gỗ nâu đen lâu đời, tạo nên điểm nhấn cổ xưa, trang trọng cho một công trình có hơn 125 năm tuổi.</p><p>Đặc biệt, giữa gian nhà bạn có thể thấy bàn thờ Quan Công được đặt chính giữa uy nghiêm, thể hiện cho quyền lực và sự phồn vinh của một gia tộc lớn. Đối với phần sàn nhà được thiết kế trũng xuống, dựa theo quan niệm lâu đời tiền bạc sẽ chảy vào nhà và không bị thất thoát về sau.</p>', 0, 4, 6, '2024-12-19 02:12:25', '2024-12-19 02:12:25'),
(19, 'Phước Kiển Tự', 'Xã Hoà Tân, Huyện Châu Thành, Đồng Tháp', 'Miễn phí', '<p>Trong số rất nhiều ngôi chùa nổi tiếng ở tỉnh Đồng Tháp có kiến trúc cổ kính, khung cảnh đẹp mắt thì chùa Phước Kiển không phải là chùa đẹp nhưng vẫn được đông đảo du khách và Phật tử viếng thăm vì sở hữu một hồ sen rất đặc biệt. Nhắc đến hoa sen, người ta thường liên tưởng đến vẻ đẹp thanh cao, tinh tế mà mỏng manh. Nhưng hoa sen trong ngôi chùa Phước Kiển ở Đồng Tháp lại nổi tiếng bởi kích thước khổng lồ, có thể “cõng” người mà chỉ làm khẽ xao động mặt nước.</p><p>Chùa Phước Kiển nằm ở xã Hòa Tân, huyện Châu Thành, tỉnh Đồng Tháp, được thành lập trước thời vua Thiệu Trị. Theo sư trụ trì Thích Huệ Từ thì trước đây ngôi chùa rất lớn, uy nghiêm, sở hữu không gian khoáng đãng, thanh tịnh, mát mẻ, Phước Kiển Tự còn từng là cơ sở hoạt động cách mạng. Tuy nhiên không may là vào năm 1966, bom đạn chiến tranh đã làm sập hoàn toàn ngôi chùa. Sau năm 1975, chùa được xây lại với kiến trúc đơn giản không cầu kỳ bao gồm: cổng vào, tháp thờ Phật Quan Âm và chính điện.</p><p>Những hố bom được các sư thầy trong chùa dùng làm hồ sen. Vừa khỏa lấp được vết tích của chiến tranh vừa có chỗ để khách du lịch tham quan. Trong ao sen có một loài sen kỳ lạ và hiếm thấy không chỉ ở Việt Nam mà ở cả các nước Đông Nam Á.</p><p>Ao sen ở chùa Phước Kiển có hình vuông tượng trưng cho đất, lá sen có hình tròn tượng trưng cho trời. Lá sen khổng lồ, to như những cái nia, vành cong gần cả tấc tay, nom rất đẹp mắt. Nếu không tận mắt nhìn thấy, chắc chắn bạn sẽ hồ nghi rằng, đây chỉ là lá sen làm bằng nhựa hoặc bên dưới lá có sắt thép chống đỡ.</p><p>Được biết, loài sen này xuất hiện trong ao của nhà chùa từ năm 1992 và tồn tại cho đến bây giờ. Không ai biết tên gọi chính xác của chúng nên người ta thường gọi bằng nhiều tên khác nhau. Có người gọi là sen vua, có khi gọi là súng nia, cây nong tầm,…chính vì có loài sen lạ nên người dân thường gọi chùa bằng cái tên dân dã “Chùa Sen Vua” hay “Chùa Lá Sen”…,</p>', 0, 2, 6, '2024-12-19 02:13:46', '2024-12-19 02:13:46'),
(20, 'Đồng sen Tháp Mười', 'Xã Mỹ Hòa, huyện Tháp Mười, tỉnh Đồng Tháp', 'Ngày thường 20,000 VND/ người. Cuối tuần là 30,000 VND/ người.', '<p>Để cảm nhận những điều tuyệt vời từ hoa sen, bạn nên đến Đồng Tháp Mười vào mùa hoa nở rộ, thường là vào mùa nước nổi từ tháng 6 đến tháng 11 hằng năm. Nếu không đến được vào mùa hoa nở nhiều nhất thì bạn vẫn có thể đến đây bất cứ lúc nào trong năm, vì không gian và không khí nơi đây vẫn thế, vẫn trong lành và dịu dàng như vậy.</p><p>Nếu đã đến đây, bạn có thể để ý xem sự chuyển màu đặc sắc của hoa sen. Thường vào buổi sáng thì hoa sẽ có màu hồng nhạt, sau đó chuyển sang hồng vào buổi trưa. Và lúc sen được xem là đẹp nhất trong ngày là khoảng 3h chiều vì lúc này hoa sẽ nở khá to khoe đài đen vàng lấp lánh dưới ánh mặt trời. Sau đó đến chiều thì sen có màu hồng đậm dần, rồi khi mặt trời lặn cũng là lúc màu sen đỏ như mặt trời hoàng hôn.</p><p>Điều làm bạn thích thú và u mê không lối thoát chính là bức tranh vùng quê rực rỡ màu hồng trắng của hoa xen kẽ giữa màu xanh của lá và chút nắng vàng của mặt trời. Cảnh thế này thì chỉ cần bạn chụp hình thôi, còn đẹp cứ để cánh đồng sen tại khu du lịch sinh thái đồng sen Tháp Mười lo.</p><p>Sau khi dạo bước vui chơi trực tiếp với những đóa sen thỏa thích thì bạn có thể đến các chòi lá ngay cạnh hồ sen để nghỉ ngơi. Ngồi bên trong các mái lá đơn sơ, nhìn ra cánh đồng sen bạt ngàn thoang thoảng hương sen nhè nhẹ, húp một tí trà sen nữa thì bạn sẽ phải bất ngờ vì cả người trở nên nhẹ nhàng và tâm hồn thanh tịnh hơn bao giờ hết.</p>', 0, 1, 6, '2024-12-19 02:14:37', '2024-12-19 02:14:37'),
(21, 'Vườn quốc gia Tràm Chim', 'Huyện Tam Nông tỉnh Đồng Tháp', 'Miễn phí', '<p>Vườn quốc gia Tràm Chim là vùng đất nằm trong địa phận của 7 xã (Tân Công Sính, Phú Đức, Phú Thọ, Phú Thành A, Phú Thành B, Phú Hiệp), thị trấn Tràm Chim thuộc huyện Tam Nông. Vườn quốc gia Tràm Chim có tổng diện tích hơn 7500 ha là mô hình thu nhỏ đặc trưng của vùng Đồng Tháp Mười, với hệ sinh thái đa đạng, nơi du khách khám phá những nét đặc trưng của miền Tây sông nước.</p><p>Vùng đất “sáu tháng đồng khô cỏ cháy, sáu tháng nước ngập trắng đồng” này là nơi phát triển của thảm thực vật phong phú với hơn 130 loài khác nhau. Hệ động vật ở đây nổi bật với hệ chim nước giàu có gồm 233 loài, thuộc 25 chi, 49 họ. Trong đó, 88% được tìm thấy vào mùa khô, chiếm ¼ tổng số các loài chim đã phát hiện ở Việt Nam. Và đặc biệt là loài Sếu đầu đỏ, lớn nhất trong họ Hạc – một tài sản thiên thiên vô giá của vườn quốc gia Tràm Chim ở Đồng Tháp.</p><p>Hệ cá ở vườn quốc gia Tràm Chim cũng không kém phần phong phú, vừa đóng vai trò cân bằng sinh thái vừa là nguồn thức ăn cho các loài chim. Trong đó có một số loài cá nằm trong sách đỏ Việt Nam như: cá Còm, cá Mang hổ, cá Ngựa nam, cá Duồng bay, cá Ét mọi, cá Hô…</p><p>Mùa nước nổi từ tháng 8 đến tháng 11 âm lịch (khoảng tháng 9 – 12 dương lịch) là mùa du lịch vườn quốc gia Tràm Chim. Khung cảnh ngập nước, xanh tốt, điểm xuyến sắc hồng của hoa sen, hoa súng bừng nở. Nguồn sản vật trở nên dồi dào và các loài chim như tụ họp về đây dự tiệc.</p><p>Vào khoảng thời gian này củng mùa chim sinh sản. Đền đây, du khách có dịp tận mắt chứng kiến cuộc sống sinh sôi, nảy nở của những loài chim quả là một điều thú vị. Hàng nghìn con chim đua nhau mớm mồi (tiêu biểu là điêng điểng và cồng cộc), thể hiện tình mẫu tử thiêng liêng và nâng tính giáo dục môi trường lên hàng đầu cho du khách gần xa, đồng thời có dịp lưu giữ mãi hình ảnh đẹp về nơi đất lành chim đậu.</p>', 0, 1, 6, '2024-12-19 02:15:08', '2024-12-19 02:15:08'),
(22, 'Lò gạch Mang Thít', 'Huyện Mang Thít, tỉnh Vĩnh Long', 'Miễn phí', '<p>Lò gạch Mang Thít Vĩnh Long đã tồn tại và lớn dần cùng với dòng sông Cổ chiên hơn 100 năm qua. Chính vì thế, lò gạch gốm này vô cùng nổi tiếng và lớn nhất ở vùng Đồng bằng sông Cửu Long. Không những thể, các sản phẩm của làng gốm còn được phép xuất khẩu sang nhiều nước phát triển trên thế giới. Dân gian, người bản địa sinh sống tại vùng đất này hàng trăm năm nay ưu ái gọi lò gạch Mang Thít Vĩnh Long là “Vương quốc gạch ngói”.</p><p>Lò gạch Mang Thít Vĩnh Long được mọi người nhớ đến với hình ảnh từng mái lò đỏ hồng, những hàng gạch nhuốm màu thời gian giữa dòng sông Cổ Chiên hàng trăm năm qua. Từ những viên gạch đỏ với đầy đủ sắc thái khác nhau, dưới bàn tay điêu luyện của nghệ nhân làng Mang Thít, nhiều tác phẩm kiệt tác được ra đời.</p><p>Theo lời kể của người dân địa phương, nghề làm gạch gốm thủ công truyền thống tại Vĩnh Long đã từng có một thời kỳ thịnh vượng và vô cùng huy hoàng đến nỗi bất kỳ gia đình nào sống ven sông này đều sở hữu một miệng lò. Đó là lý do tại sao làng nghề lò gạch gốm Mang Thít Vĩnh Long vẫn còn lưu giữ được nhiều giá trị truyền thống. Mỗi lò gạch nung được xem như là một biểu tượng của thời gian, phảng phất nhiều kỉ niệm.</p>', 0, 4, 5, '2024-12-19 02:16:05', '2024-12-19 02:16:05'),
(23, 'Chùa Phật Ngọc Xá Lợi', 'Xã Tân Ngãi, thành phố Vĩnh Long, tỉnh Vĩnh Long', 'Miễn phí', '<p>Đứng từ xa nhìn lại, bạn sẽ nhìn thấy hình ảnh cổng chùa với vẻ đẹp uy nghiêm, bề thế. MIA.vn nghĩ rằng, các bạn nên check-in ngay cổng chùa để lưu lại nhiều khoảnh khắc tuyệt đẹp, có 1 - 0 -2 ngay tại đây. Khi đến Chùa Phật Ngọc Xá Lợi Vĩnh Long, các bạn không chỉ được hòa mình vào khung cảnh thiên nhiên yên bình, thanh tĩnh mà còn được chiêm ngưỡng vẻ đẹp cổ kính, linh thiêng của ngôi chùa.</p><p>Ngôi chùa sở hữu diện tích hơn 1.7ha , được xây dựng vào năm 1970 do cố Hòa Thượng Thích Thiện Hoa trụ trì. Tuy nhiên, đến tháng 4 nằm 1975, vì nhiều lý do khác nhau nên việc thi công đã tạm dừng. Đến năm 2015, việc thi xông xây dựng tại Chùa Phật Ngọc Xá Lợi Vĩnh Long mới được tiếp tục. Trong đó có nhiều hạng mục đến thời điểm 2015 mới dần hoàn thiện như: chánh điện, bảo tháp, đài Đức Quan Thế Âm lộ thiên, cổng tam quan...</p><p>Chùa Phật Ngọc Xá Lợi Vĩnh Long được mọi người ví von như một thị trấn cổ thu nhỏ vì phong cách kiến trúc mang đậm bản sắc văn hóa Phật giáo của người Việt Nam. Với lối thiết kế khoa học, ngôi chùa sử dụng nhiều khoảng trống để tạo không gian nhẹ nhàng, thanh tịnh. Lối kiến trúc nghệ thuật vừa tinh xảo vừa hài hòa của Chùa Phật Ngọc Xá Lợi Vĩnh Long khiến nhiều người vô cùng thích thú khi được check-in tại đây. Không những thế, hầu hết các hạng mục từ ngoài vào trong của ngôi chùa đều mang đậm nét văn hóa tâm linh đặc trưng của kiến trúc truyền thống Việt Nam nên đã vô cùng thu hút khách thập phương.</p><p>Chùa Phật Ngọc Xá Lợi Vĩnh Long có rất nhiều góc hấp dẫn, vô cùng đẹp tạo điều kiện cho nhiều bạn trẻ đến đây sống ảo. Từ mái chùa cong cong, bậc thang bề thế đến bảo tháp cao lớn, mỗi góc tại Chùa Phật Ngọc Xá Lợi Vĩnh Long đều có thể trở thành nơi tuyệt vời để bạn có thể thả dáng chụp ảnh.</p>', 0, 2, 5, '2024-12-19 02:16:58', '2024-12-19 02:16:58');

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
(46, '1734273461-langnoitanlaplongan01.jpg', 'Khám phá làng nổi với nhiều điều thú vị', NULL, 0, 8, '2024-12-15 07:37:41', '2024-12-15 07:37:41'),
(47, '1734599925-lang-co-phuoc-loc-tho-01-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 2, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(48, '1734599926-lang-co-phuoc-loc-tho-03-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(49, '1734599926-lang-co-phuoc-loc-tho-04-1696516109.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(50, '1734599926-lang-co-phuoc-loc-tho-08-1696516170.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(51, '1734599926-lang-co-phuoc-loc-tho-09-1696516170.jpg', 'Làng cổ với không khí mát mẻ', NULL, 0, 10, '2024-12-19 02:18:46', '2024-12-19 02:18:46'),
(52, '1734599990-nha-tram-cot-2.webp', 'Ngôi nhà cổ kín', NULL, 2, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(53, '1734599990-nha-tram-cot-6-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(54, '1734599990-nha-tram-cot-7-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(55, '1734599990-nha-tram-cot-8-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(56, '1734599990-nha-tram-cot-9-1024x768.webp', 'Ngôi nhà cổ kín', NULL, 0, 11, '2024-12-19 02:19:50', '2024-12-19 02:19:50'),
(57, '1734600070-canhdongbattan-1.jpg', 'Cánh đồng rộng lớn', NULL, 2, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(58, '1734600070-canhdongbattanlongan03.jpg', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(59, '1734600070-khu-du-lich-canh-dong-bat-tan-1-1024x683.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(60, '1734600070-khu-du-lich-canh-dong-bat-tan-6-1024x614.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(61, '1734600070-khu-du-lich-canh-dong-bat-tan-8-1024x678.webp', 'Cánh đồng rộng lớn', NULL, 0, 12, '2024-12-19 02:21:10', '2024-12-19 02:21:10'),
(62, '1734600163-bien-tan-thanh-go-cong-0.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 2, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(63, '1734600163-bientanthanh-1.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(64, '1734600163-bien-tan-thanh-go-cong-1.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(65, '1734600163-bien-tan-thanh-go-cong-3-min.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(66, '1734600163-kinh-nghiem-du-lich-bien-tan-thanh-go-cong-tien-giang-day-du-202203240751282536.jpg', 'Bãi biển có khung cảnh thơ mộng', NULL, 0, 13, '2024-12-19 02:22:43', '2024-12-19 02:22:43'),
(67, '1734600213-nhathocaibe1.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 2, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(68, '1734600213-nhathocaibe2.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(69, '1734600213-nhathocaibe3.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(70, '1734600213-nhathocaibe4-1.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(71, '1734600213-nhathocaibe9.jpg', 'Nhà thờ với khung cảnh uy nghi', NULL, 0, 14, '2024-12-19 02:23:33', '2024-12-19 02:23:33'),
(72, '1734600351-Nha-tho-chinh-toa-My-Tho-4.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 2, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(73, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-4-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(74, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-5-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(75, '1734600351-nha-tho-chanh-toa-my-tho-co-tuoi-doi-tram-nam-voi-ve-dep-yen-binh-6-1650972388.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(76, '1734600351-Nha-tho-chinh-toa-My-Tho-7-1170x785.jpg', 'Nhà thờ Chánh Toà Mỹ Tho', NULL, 0, 15, '2024-12-19 02:25:51', '2024-12-19 02:25:51'),
(77, '1734600609-Screenshot 2024-12-19 162908.png', 'Làng cổ Đông Hòa Hiệp', NULL, 2, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(78, '1734600609-kham-pha-khong-gian-nam-bo-tai-lang-co-dong-hoa-hiep-tien-giang-1-1650992389.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(79, '1734600609-kham-pha-khong-gian-nam-bo-tai-lang-co-dong-hoa-hiep-tien-giang-5-1650992389.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(80, '1734600609-langcodonghoahiep.jpg', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(81, '1734600609-Screenshot 2024-12-19 162858.png', 'Làng cổ Đông Hòa Hiệp', NULL, 0, 16, '2024-12-19 02:30:09', '2024-12-19 02:30:09'),
(82, '1734600649-dia-diem-du-lich-dong-thap-4.webp', 'Làng hoa Sa Đéc', NULL, 2, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(83, '1734600649-24d3e752a8046b5a3215_805332015.jpeg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(84, '1734600649-du-lich-lang-hoa-sa-dec-dong-thap.jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(85, '1734600649-lang-hoa-sa-dec-dong-thap-la-cai-noi-cua-nghe-trong-hoa-kieng(1).jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(86, '1734600649-ve-dep-cua-lang-hoa-sa-dec-dong-thap(1).jpg', 'Làng hoa Sa Đéc', NULL, 0, 17, '2024-12-19 02:30:49', '2024-12-19 02:30:49'),
(87, '1734600706-nhacohuynhthuyle-1.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 2, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(88, '1734600706-nha-co-huynh-thuy-le02.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(89, '1734600706-nha-co-huynh-thuy-le-5.webp', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(90, '1734600706-nha-co-huynh-thuy-le-06.jpg', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(91, '1734600706-nha-co-huynh-thuy-le-7-1024x683.webp', 'Nhà cổ Huỳnh Thuỷ Lê', NULL, 0, 18, '2024-12-19 02:31:46', '2024-12-19 02:31:46'),
(92, '1734600792-download.jpg', 'Phước Kiển Tự', NULL, 2, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(93, '1734600792-chua-la-sen-1-1024x576.webp', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(94, '1734600792-chua-la-sen-2-1024x576.webp', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(95, '1734600792-download (1).jpg', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(96, '1734600792-images.jpg', 'Phước Kiển Tự', NULL, 0, 19, '2024-12-19 02:33:12', '2024-12-19 02:33:12'),
(97, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-1.webp', 'Đồng sen Tháp Mười', NULL, 2, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(98, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-3.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(99, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-5.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(100, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-6.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(101, '1734600815-khu-du-lich-sinh-thai-dong-sen-thap-muoi-cover.webp', 'Đồng sen Tháp Mười', NULL, 0, 20, '2024-12-19 02:33:35', '2024-12-19 02:33:35'),
(102, '1734600850-vuon-quoc-gia-tram-chim-dong-thap-7.jpg', 'Vườn quốc gia Tràm Chim', NULL, 2, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(103, '1734600850-vuon-quoc-gia-tram-chim-1-1.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(104, '1734600850-vuon-quoc-gia-tram-chim-2.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(105, '1734600850-vuon-quoc-gia-tram-chim-3.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(106, '1734600850-vuon-quoc-gia-tram-chim-dong-thap-3.jpg', 'Vườn quốc gia Tràm Chim', NULL, 0, 21, '2024-12-19 02:34:10', '2024-12-19 02:34:10'),
(107, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-1-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 2, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(108, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-3-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(109, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-4-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(110, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-5-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(111, '1734600877-check-in-lo-gach-mang-thit-vinh-long-vuong-quoc-do-nam-canh-dong-song-co-chien-6-1662911129.jpeg', 'Lò gạch Mang Thít', NULL, 0, 22, '2024-12-19 02:34:37', '2024-12-19 02:34:37'),
(112, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-2-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 2, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(113, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-1-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(114, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-3-1662989919.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(115, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-4-1662989918.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09'),
(116, '1734600909-chua-phat-ngoc-xa-loi-vinh-long-chon-thanh-tinh-ban-nen-ghe-tham-6-1662989918.jpeg', 'Chùa Phật Ngọc Xá Lợi', NULL, 0, 23, '2024-12-19 02:35:09', '2024-12-19 02:35:09');

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
(3, 'Rich Hotel', 'Trung bình mỗi đêm khoảng 247.755 VNĐ', '86D Hùng Vương, An Cư, Ninh Kiều, Cần Thơ', '0365550024', '24/7', 3, 2.30, '<p>Nằm ở vị trí trung tâm tại Trung tâm thành phố Cần Thơ của Cần Thơ, chỗ nghỉ này đặt quý khách ở gần các điểm thu hút và tùy chọn ăn uống thú vị. Hãy nhớ dành một chút thời gian để thăm thú Nhà cổ Bình Thủy cũng như Bãi tắm Cần Thơ gần đó. Chỗ nghỉ 3 sao này có nhà hàng giúp cho kỳ nghỉ của quý khách thêm thư thái và đáng nhớ.</p>', '1734530199.jpg', 0, 1, 6, '2024-12-18 06:56:39', '2024-12-18 07:27:39'),
(4, 'Quán cháo cá lóc Cây Sung', '50.000đ/người.', '577 QL1A, Phường 4, Tân An, Long An', '0982971717', '7h00 sáng đến 21h00 các ngày trong tuần', 3, 6.00, '<p>Cháo cá lóc Cây Sung là một trong những quán ăn cực kỳ nổi tiếng ở Tân An, Long An. Quán cháo cá lóc Cây Sung mở cửa đều đặn từ 7 giờ sáng tới 9 giờ tối mỗi ngày trung bình quán bán hơn 100 kg cá lóc tươi. Những ngày cuối tuần, lễ lạt, số cá lóc bán được hơn 150 kg/ngày và hơn thế, con số đủ cho thấy cháo cá lóc rau đắng Long An&nbsp;có sức hấp dẫn như thế nào với bao người.</p>', '1734601420.jpg', 0, 2, 11, '2024-12-19 02:43:40', '2024-12-19 02:43:40');

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
